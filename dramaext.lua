function DramaExt:play_subtitle(string_id, duration, color, nationality_icon)
	self._cue = self._cue or {}
	self._cue.string_id = string_id

	managers.subtitle:set_visible(false)

	if not duration or duration == 0 then
		managers.subtitle:show_subtitle(string_id, 100000, nil, color, nationality_icon)
	else
		managers.subtitle:show_subtitle(string_id, duration, nil, color, nationality_icon)
	end

    if string.len(managers.localization:text(string_id)) > 0 then
	    managers.queued_tasks:queue(nil, self._do_show_subtitle, self, nil, 0.1, nil)
    end
end