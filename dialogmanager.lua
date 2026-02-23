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
    ["bank_car_explosion"] = true,
    ["bank_car_explosion_var2"] = true,
    ["bank_car_explosion_var3"] = true,
    ["bank_get_to_the_gate_rem"] = true,
    ["bank_driving_around_var1"] = true,
    ["bank_driving_around_var2"] = true,
    ["bank_secure_loot1"] = true,
    ["bank_carry_bags_var1_1"] = true,
    ["bank_carry_bags_var1_2"] = true,
    ["bank_carry_bags_var2_1"] = true,
    ["bank_carry_bags_var2_2"] = true,
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
    ["bank_op_ste_picked_cylinders2"] = true,
    ["bank_op_ste_picked_cylinders_var2_2"] = true,
    ["bank_op_ste_in_find_enigma_rem_var1"] = true,
    ["bank_op_ste_in_find_enigma_rem_var2"] = true,
    ["bank_op_ste_entered_bank1"] = true,
    ["bank_op_ste_entered_bank2"] = true,
    ["bank_op_ste_escape1"] = true,
    ["bank_op_ste_escape2"] = true,
    ["bank_op_ste_escape3"] = true,
    ["bank_op_loud_escape1"] = true,
    ["bank_op_loud_escape2"] = true,
    ["bank_op_tank_appears1"] = true,
    ["bank_op_tank_destro_truck1"] = true,
    ["bank_op_luring_tank_var1"] = true,
    ["bank_op_luring_tank_var2"] = true,
    ["bank_op_tank_almost_there_var1"] = true,
    ["bank_op_tank_almost_there_var2"] = true,
    ["bank_op_tank_blows_wall_var1"] = true,
    ["bank_op_tank_blows_wall_var2"] = true,
    ["castle_spawn"] = true,
    ["castle_find_eq1"] = true,
    ["castle_find_eq_rem"] = true,
    ["castle_find_eq_rem2"] = true,
    ["castle_russian_killed_var1"] = true,
    ["castle_russian_killed_var2"] = true,
    ["castle_russian_killed_var3"] = true,
    ["castle_russian_killed_var4"] = true,
    ["castle_grabbed_intel_var1"] = true,
    ["castle_grabbed_intel_var2"] = true,
    ["castle_grabbed_intel_var3"] = true,
    ["castle_grabbed_intel_var4"] = true,
    ["castle_advance2"] = true,
    ["castle_blast_gate1"] = true,
    ["castle_blast_gate_basement3"] = true,
    ["castle_blast_gate_rem"] = true,
    ["castle_blast_gate_basement_rem"] = true,
    ["castle_move_to_court1"] = true,
    ["castle_move_to_court_rem"] = true,
    ["castle_clear_court1"] = true,
    ["castle_clear_court2"] = true,
    ["castle_storm_castle_continue3"] = true,
    ["castle_storm_castle_rem"] = true,
    ["castle_storm_castle_complete1"] = true,
    ["castle_storm_castle_complete1_1"] = true,
    ["castle_storm_castle_complete2"] = true,
    ["castle_get_to_tower2"] = true,
    ["castle_get_to_tower_rem"] = true,
    ["castle_radio_report5"] = true,
    ["castle_wait_extraction_plan2"] = true,
    ["castle_wait_extraction_plan3"] = true,
    ["castle_wait_extraction_plan_rem"] = true,
    ["castle_found_general1"] = true,
    ["castle_truck_driver_sorry_var1"] = true,
    ["castle_truck_driver_sorry_var2"] = true,
    ["castle_truck_driver_sorry_var3"] = true,
    ["castle_truck_driver_sorry_var4"] = true,
    ["castle_truck_driver_sorry_var5"] = true,
    ["castle_truck_driver_get_in_var1"] = true,
    ["castle_truck_driver_get_in_var2"] = true,
    ["castle_truck_driver_get_in_var3"] = true,
    ["castle_truck_driver_get_in_var4"] = true,
    ["castle_truck_driver_get_in_var5"] = true,
    ["castle_opn_hear_party"] = true,
    ["castle_opn_barrel_shot_var1"] = true,
    ["castle_opn_barrel_shot_var2"] = true,
    ["castle_opn_barrel_shot_var3"] = true,
    ["castle_opn_paratroopers_dropped_var1"] = true,
    ["castle_opn_paratroopers_dropped_var2"] = true,
    ["castle_opn_fire_spread_bant_var1"] = true,
    ["castle_opn_fire_spread_bant_var2"] = true,
    ["castle_opn_fire_spread_bant_var3"] = true,
    ["castle_opn_shoot_barrels_rem"] = true,
    ["castle_opn_death_count_response_var1"] = true,
    ["castle_opn_death_count_response_var2"] = true,
    ["castle_opn_death_count_response_var3"] = true,
    ["castle_opn_death_count_response_var4"] = true,
    ["castle_opn_death_count_response_var5"] = true,
    ["castle_opn_death_count_response_var6"] = true,
    ["castle_opn_death_count_response_var7"] = true,
    ["castle_opn_death_count_response_var8"] = true,
    ["castle_opn_death_count_response_var9"] = true,
    ["castle_opn_enough_barrels2"] = true,
    ["castle_opn_death_count_5"] = true,
    ["castle_opn_death_count_10"] = true,
    ["castle_opn_death_count_15"] = true,
    ["castle_opn_death_count_20"] = true,
    ["castle_opn_death_count_25"] = true,
    ["castle_opn_death_count_30"] = true,
    ["castle_opn_death_count_40"] = true,
    ["castle_opn_death_count_50"] = true,
    ["castle_opn_death_count_60"] = true,
    ["castle_opn_death_count_70"] = true,
    ["castle_opn_death_count_80"] = true,
    ["castle_opn_death_count_90"] = true,
    ["castle_opn_death_count_100"] = true,
    ["castle_opn_death_count_150"] = true,
    ["castle_opn_death_count_200"] = true,
    ["castle_opn_death_count_250"] = true,
    ["castle_opn_killed_enough_enemies1"] = true,
    ["castle_opn_killed_enough_enemies2"] = true,
    ["castle_opn_raising_raid_flag"] = true,
    ["castle_opn_raid_flag_raised"] = true,
    ["castle_opn_all_obj_done1"] = true,
    ["castle_opn_all_obj_done3"] = true,
    ["castle_opn_resistance_arrives2"] = true,
    ["radiobase_spawn2"] = true,
    ["radiobase_spawn3"] = true,
    ["radiobase_post_spawn1"] = true,
    ["radiobase_post_spawn2"] = true,
    ["radiobase_spot_guards1"] = true,
    ["radiobase_spot_guards2"] = true,
    ["radiobase_find_franz3"] = true,
    ["radiobase_find_franz4"] = true,
    ["radiobase_clear_area"] = true,
    ["radiobase_clear_area_rem5"] = true,
    ["radiobase_clear_area_rem6"] = true,
    ["radiobase_clear_area_rem7"] = true,
    ["radiobase_area_cleared2"] = true,
    ["radiobase_tech_tied_rem"] = true,
    ["radiobase_free_franz4"] = true,
    ["radiobase_free_franz_rem3"] = true,
    ["radiobase_free_franz_rem4"] = true,
    ["radiobase_technician_free"] = true,
    ["radiobase_technician_free2"] = true,
    ["radiobase_technician_free3"] = true,
    ["radiobase_searching_for_wire_tools1"] = true,
    ["radiobase_pick_tools_rem1"] = true,
    ["radiobase_pick_tools_rem3"] = true,
    ["radiobase_prepare_for_attack_complete1"] = true,
    ["radiobase_prepare_for_attack_complete2"] = true,
    ["radiobase_tools_found"] = true,
    ["radiobase_tools_picked_rem2"] = true,
    ["radiobase_deliver_tools2"] = true,
    ["radiobase_technician_climbs"] = true,
    ["radiobase_franz_climbing1"] = true,
    ["radiobase_defend_1st_barricade1_north"] = true,
    ["radiobase_defend_1st_barricade1_south"] = true,
    ["radiobase_tank_banter1"] = true,
    ["radiobase_tank_banter2"] = true,
    ["radiobase_tank_banter3"] = true,
    ["radiobase_tank_banter4"] = true,
    ["radiobase_tank_destroys_gate2"] = true,
    ["radiobase_barricade_down2"] = true,
    ["radiobase_barricade_down3"] = true,
    ["radiobase_barricade_down4"] = true,
    ["radiobase_protect_barricade1"] = true,
    ["radiobase_protect_barricade2"] = true,
    ["radiobase_enemy_plant_dyna2"] = true,
    ["radiobase_enemy_plant_dyna3"] = true,
    ["radiobase_tank_destroys_main2"] = true,
    ["radiobase_defend_technician_rem"] = true,
    ["radiobase_transmission_ends1"] = true,
    ["radiobase_transmission_ends2"] = true,
    ["radiobase_franz_climb_down3"] = true,
    ["radiobase_tech_climb_down_complete"] = true,
    ["radiobase_defend_technician_complete"] = true,
    ["radiobase_cut_cables1"] = true,
    ["radiobase_2nd_cable"] = true,
    ["radiobase_cut_cables_rem"] = true,
    ["radiobase_last_cable_cut"] = true,
    ["radiobase_escape_rem"] = true,
    ["radiobase_misssion_complete"] = true,
    ["radiobase_arc_area"] = true,
    ["radiobase_recover_codebooks_rem1"] = true,
    ["radiobase_wait_for_plane2"] = true,
    ["radiobase_wait_for_plane_p1"] = true,
    ["radiobase_wait_for_plane_p2"] = true,
    ["radiobase_open_pod1"] = true,
    ["radiobase_open_pod_rem"] = true,
    ["radiobase_pick_up_device_rem"] = true,
    ["radiobase_connect_device2"] = true,
    ["radiobase_connect_device_rem"] = true,
    ["radiobase_change_channel_rem"] = true,
}

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
                log("Subtitle displayed: " .. s)
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
