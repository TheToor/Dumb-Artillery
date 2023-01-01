-- script.on_event("toggle-artillery", function(event)
	-- if event.selected_prototype == nil then
		-- return
	-- end
	
	-- if event.selected_prototype.derived_type == "artillery-turret" or event.selected_prototype.derived_type == "artillery-wagon" then
		-- game.print("Selected Artillery or Artillery wagon at " .. tostring(event.tick))
		
		-- local player = game.get_player(event.player_index)
		-- local entities = player.selected.surface.find_entities_filtered{position = player.selected.position, radius = 1, type = event.selected_prototype.derived_type, limit = 1}
		-- if #(entities) == 0 then
			-- game.print("Failed to find turret at X " .. tostring(player.selected.position.x) .. " and Y " .. tostring(player.selected.position.y))
			-- return
		-- end
		
		-- for _, entity in pairs(entities) do
			-- entity.disable_automatic_firing = not entity.disable_automatic_firing
			-- if entity.disable_automatic_firing then
				-- game.print("Disabled automatic firing")
			-- else
				-- game.print("Enabled automatic firing")
			-- end
		-- end

	-- end
-- end)