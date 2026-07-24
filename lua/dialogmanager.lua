local LINES_THAT_ALREADY_EXIST_BUT_HAVE_NO_STRING_ID = {
	["bank_shells_first2"] = true,
	["bank_flak88_destroy_wall1"] = true,
	["bank_flak88_destroy_wall2"] = true,
	["bank_flag_burnt_var3"] = true,
    ["bank_op_request_dynamite"] = true,
    ["bank_op_lure_tank_further"] = true,
    ["radiobase_clear_area_rem8"] = true,
    ["radiobase_area_cleared1"] = true,
    ["radiobase_technician_free_ex1"] = true,
    ["radiobase_tank_entering"] = true,
    ["radiobase_tech_2nd_message"] = true,
    ["radiobase_tech_3rd_message"] = true,
    ["radiobase_tech_5th_message"] = true,
    ["radiobase_tech_6th_message"] = true,
    ["radiobase_tech_7th_message"] = true,
    ["radiobase_tech_9th_message"] = true,
    ["radiobase_tech_10th_message"] = true,
    ["radiobase_franz_climb_down1"] = true,
    ["radiobase_franz_climb_down2"] = true,
    ["radiobase_tech_hide"] = true,
    ["radiobase_tech_escape_hint"] = true,
    ["radiobase_tech_tied_rem2"] = true,
    ["trainyard_found_dyna_9na2"] = true,
    ["trainyard_found_dyna3"] = true,
    ["trainyard_plant_dynamite2"] = true,
    ["trainyard_plant_dynamite3_brit"] = true,
}

local LINES_THAT_USE_DIFFERENT_STRING_ID = {
    ["trainyard_lowerar_crane_shoot_rem"] = "silo_line_25"
}

if not io.file_is_readable(ModPath .. "generated/AddedStringIdToSounds.json") then
    BLT:Log(LogLevel.ERROR, "[More subtitles] Generated files are missing! Make sure to run parser.ts!")
    return
end

local ADDED_STRING_ID_TO_SOUNDS = io.load_as_json(ModPath .. "generated/AddedStringIdToSounds.json")
local STRING_ID_DIFFERENT_IN_LOUD = io.load_as_json(ModPath .. "generated/StringIdDifferentInLoud.json")

local debug_mode = true

function DialogManager:_play_dialog(data)
	local dialog = data.dialog
	local unit = dialog.params.on_unit or dialog.params.override_characters and managers.player:player_unit()
	local line = data.line or 1
	local third_person_data = dialog.third_person or dialog.lines and dialog.lines[line] and dialog.lines[line].third_person

	if dialog.lines and #dialog.lines > 0 then
		dialog.line = line
	end

	local char = dialog.character or dialog.lines and dialog.lines[dialog.line].character

	char = char or managers.criminals:character_name_by_unit(managers.player:player_unit()) or ""

	local nationality_icon

	if tweak_data.gui.icons["nationality_small_" .. char] then
		nationality_icon = tweak_data.gui.icons["nationality_small_" .. char]
	end

	if not alive(unit) then
		if third_person_data then
			unit = self:_setup_position(dialog, third_person_data)
		else
			unit = managers.criminals:character_unit_by_name(char)
		end
	end

	if not alive(unit) then
		Application:error("The dialog script tries to access a unit named '" .. tostring(dialog.character) .. "', which doesn't seem to exist. Line will be skipped.")
		managers.dialog:finished()

		return
	end

	local char_voice

	if third_person_data then
		unit:drama():set_voice(char)
	elseif char then
		char_voice = tweak_data.character[char].speech_prefix

		unit:drama():set_voice(char_voice)
	end

	if not nationality_icon then
		Application:debug("[DialogManager:_play_dialog] nationality_icon was NIL for dialogue.", data.line, inspect(data.dialog))
	end

	dialog.unit = unit

	local color_id = managers.criminals:character_color_id_by_unit(unit)
	local crim_color = tweak_data.chat_colors[color_id]

	if dialog.lines and #dialog.lines > 0 then
		local line_data = dialog.lines[line]

		if line_data.string_id or ((debug_mode and line_data.sound) or ADDED_STRING_ID_TO_SOUNDS[line_data.sound] or LINES_THAT_ALREADY_EXIST_BUT_HAVE_NO_STRING_ID[line_data.sound] or LINES_THAT_USE_DIFFERENT_STRING_ID[line_data.sound]) then
			local s = line_data.string_id or line_data.sound
            if LINES_THAT_USE_DIFFERENT_STRING_ID[line_data.sound] ~= nil then
                s = LINES_THAT_USE_DIFFERENT_STRING_ID[line_data.sound]
            end

			if char_voice then
				s = s .. "_" .. char_voice
			end

			if self._show_subtitles then
                if STRING_ID_DIFFERENT_IN_LOUD[s] ~= nil and managers.groupai:state():is_police_called() then
                    s = STRING_ID_DIFFERENT_IN_LOUD[s]
                end
				unit:drama():play_subtitle(s, nil, crim_color, nationality_icon)
                if debug_mode then
                    log(s)
                end
			end
		end

		if line_data.sound then
			if debug_mode and (line_data.string_id == nil) then
				if char_voice then
					log("Attempt to localize ".. line_data.sound .. "_" .. char_voice .. ": " .. managers.localization:text(line_data.sound .. "_" .. char_voice))
				else
					log("Attempt to localize ".. line_data.sound .. ": " .. managers.localization:text(line_data.sound))
				end
			end

			if unit == managers.player:local_player() then
				managers.player:stop_all_speaking_except_dialog()
			end

			unit:drama():play_sound(line_data)
		end
	else
		if dialog.string_id or ((debug_mode and dialog.sound) or ADDED_STRING_ID_TO_SOUNDS[dialog.sound] or LINES_THAT_ALREADY_EXIST_BUT_HAVE_NO_STRING_ID[dialog.sound]) then
			local s = dialog.string_id or dialog.sound

			if char_voice then
				s = s .. "_" .. char_voice
			end

			if self._show_subtitles then
				unit:drama():play_subtitle(s, nil, crim_color, nationality_icon)
                if debug_mode then
                    log("Subtitle displayed: " .. s)
                end
			end
		end

		if dialog.sound then
			if unit == managers.player:local_player() then
				managers.player:stop_all_speaking_except_dialog()
			end

			unit:drama():play_sound(dialog)
		end
	end
end
