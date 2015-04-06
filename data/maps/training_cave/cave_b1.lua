local map = ...

function door1_open_switch:on_activated()
  map:open_doors("door1_")
end
