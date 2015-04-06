local map = ...

function map:on_started()
  if shield_chest:is_open() then
    shield_chest_switch:set_activated(true)
  else
    shield_chest:set_enabled(false)
  end

  door1_switch:set_activated(door1_left:is_open())
  
end

function shield_chest_switch:on_activated()
  sol.audio.play_sound("chest_appears")
  shield_chest:set_enabled(true)
end

function door1_switch:on_activated()
  map:open_doors("door1_")
end

