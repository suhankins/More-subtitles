local ADDED_STRING_ID_TO_SOUNDS = {
    ["bank_spawn_land1"] = true,
    ["bank_shells_first1_1"] = true,
    ["bank_shells_picked1"] = true,
    ["bank_flak88_attached"] = true,
    ["bank_flak88_reload2"] = true,
    ["bank_bank_entrance_free3"] = true,
    ["bank_locate_vault2"] = true,
    ["bank_approaching_vault1"] = true,
    ["bank_approaching_vault2"] = true,
    ["bank_approaching_vault3"] = true,
    ["bank_breach_vault_idea1"] = true,
    ["bank_breach_vault_idea4"] = true,
    ["bank_breach_vault_idea5"] = true,
    ["bank_breach_vault_idea6"] = true,
    ["bank_destroy_skylight_rem"] = true,
    ["bank_part_skylight_destroyed"] = true,
    ["bank_part_skylight_destroyed2"] = true,
    ["bank_flag_burnt"] = true,
    ["bank_flag_burnt_var2"] = true,
    ["bank_radio_found1"] = true,
    ["bank_use_radio1"] = true,
    ["bank_use_radio2"] = true,
    ["bank_radio_found2"] = true,
    ["bank_wait_for_plane2"] = true,
    ["bank_wait_for_plane3"] = true,
    ["bank_wait_for_plane4"] = true,
    ["bank_plane_arriving"] = true,
    ["bank_plane_near_sky1"] = true,
    ["bank_close_to_explo_hole1"] = true,
    ["bank_close_to_explo_hole2"] = true,
    ["bank_vault_extra_loot1"] = true,
    ["bank_find_car_rem"] = true,
    ["bank_smash_fence"] = true,
    ["bank_near_gate"] = true,
    ["bank_fence_smashed1"] = true,
    ["bank_car_explosion_var2"] = true,
    ["bank_get_to_the_gate_rem"] = true,
    ["bank_driving_around_var1"] = true,
    ["bank_secure_loot1"] = true,
    ["bank_carry_bags_var1_1"] = true,
    ["bank_carry_bags_var1_2"] = true,
    ["bank_resist_pilot_welcome_var1"] = true,
    ["bank_resist_pilot_welcome_var2"] = true,
    ["bank_resist_pilot_welcome_var3"] = true,
    ["bank_resist_pilot_welcome_var4"] = true,
    ["bank_resist_pilot_welcome_var5"] = true,
    ["bank_resist_pilot_drop_gold_var1"] = true,
    ["bank_resist_pilot_drop_gold_var2"] = true,
    ["bank_resist_pilot_drop_gold_var3"] = true,
    ["bank_resist_pilot_drop_gold_var4"] = true,
    ["bank_resist_pilot_drop_gold_var5"] = true,
    ["bank_loot_drop_var1"] = true,
    ["bank_loot_drop_var2"] = true,
    ["bank_carry_bags_rem"] = true,
    ["bank_start_plane1"] = true,
    ["bank_more_gold1"] = true,
    ["bank_plane_started"] = true,
}

local LINES_THAT_ALREADY_EXIST_BUT_HAVE_NO_STRING_ID = {
	["bank_shells_first2"] = true,
	["bank_flak88_destroy_wall1"] = true,
	["bank_flak88_destroy_wall2"] = true,
	["bank_flag_burnt_var3"] = true,
}

local debug_mode = false

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

		if line_data.string_id or ((debug_mode and line_data.sound) or ADDED_STRING_ID_TO_SOUNDS[line_data.sound] or LINES_THAT_ALREADY_EXIST_BUT_HAVE_NO_STRING_ID[line_data.sound]) then
			local s = line_data.string_id or line_data.sound

			if char_voice then
				s = s .. "_" .. char_voice
			end

			if self._show_subtitles then
				unit:drama():play_subtitle(s, nil, crim_color, nationality_icon)
                log(s)
			end
		end

		if line_data.sound then
			if (line_data.string_id == nil) then
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
                log(s)
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
