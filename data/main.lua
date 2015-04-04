-- This is the main Lua script of your project.
-- See the Lua API! http://www.solarus-games.org/solarus/documentation/

function sol.main:on_started()

  -- Setting a language is useful to display text and dialogs.
  sol.language.set_language("en")

  local solarus_logo = require("menus/solarus_logo")

  -- Show the Solarus logo initially.
  sol.menu.start(self, solarus_logo)
  solarus_logo.on_finished = function()
    
	local save_exists = sol.game.exists("save1.dat")
	local game = sol.game.load("save1.dat")
	
	if not exists then
		game:set_starting_location("house_outside", "mailbox")
	end

	game:start()

  end

end

