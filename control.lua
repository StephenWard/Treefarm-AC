
script.on_event(defines.events.on_built_entity, function(event)
	if event.created_entity.name == "tf-cokery-dummy" then
		local player = game.players[event.player_index]
	
		player.surface.create_entity({
			name = "tf-cokery", 
			position = event.created_entity.position, 
			force = player.force
		})
		-- regardless of whether the cookery was created successfully or not, we still want to destroy the placeholder object
		event.created_entity.destroy()
	end
end)