Gui_tab_menu = Menu.Title("GUI_TAB_MENU")
Gui_tab_menu:CenterOption("Main Menu - Lua")

Gui_tab_all_players = Menu.Title("GUI_TAB_ALL_PLAYERS")
Gui_tab_all_players:CenterOption("Online Players - Lua")

Gui_tab_players = Menu.Title("GUI_TAB_PLAYERS")
Gui_tab_players:CenterOption("Player Name - Lua")

Gui_tab_self = Menu.Title("GUI_TAB_SELF")
Gui_tab_self:CenterOption("Self Options - Lua")

Gui_tab_teleport = Menu.Title("GUI_TAB_TELEPORT")
Gui_tab_teleport:CenterOption("Teleport Options - Lua")

Gui_tab_weapons = Menu.Title("GUI_TAB_WEAPONS")
Gui_tab_weapons:CenterOption("Weapon Options - Lua")

Gui_tab_vehicle = Menu.Title("GUI_TAB_VEHICLE")
Gui_tab_vehicle:CenterOption("Vehicle Options - Lua")

Gui_tab_world = Menu.Title("GUI_TAB_WORLD")
Gui_tab_world:CenterOption("Game World - Lua")

Gui_tab_model_swapper = Menu.Title("GUI_TAB_MODEL_SWAPPER")
Gui_tab_model_swapper:CenterOption("Model Plugin - Lua")

Gui_tab_model_script = Menu.Title("GUI_TAB_MODEL_SCRIPT")
Gui_tab_model_script:CenterOption("Network Events - Lua")

Gui_tab_attribute = Menu.Title("GUI_TAB_ATTRIBUTE")
Gui_tab_attribute:CenterOption("Attribute Adjustments - Lua")

Gui_tab_interface = Menu.Title("GUI_TAB_INTERFACE")
Gui_tab_interface:CenterOption("Settings Options - Lua")

Gui_tab_interface:Option("Display a prompt in the window", function ()
    log.info("I will display a log message in the black window")
end)

local Casino_carousel_drawin = Gui_tab_interface:BoolOption("Casino carousel drawing")

local Coordinate_axis = Gui_tab_interface:FloatOption("Coordinate axis")

loopa0 = 0 
local Character_Opacity_Settings = Gui_tab_interface:IntOption("Character Opacity Settings")
local Character_Opacity = Gui_tab_interface:BoolOption("Character Opacity")

script.register_looped("Game Loops", function()

    if  Character_Opacity:is_enabled() then
        MISC.SET_SUPER_JUMP_THIS_FRAME(PLAYER.PLAYER_ID());
    end

end)