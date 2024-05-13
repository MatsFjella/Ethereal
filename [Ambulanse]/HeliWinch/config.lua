Config = {} -- Do not touch this line

-- Control Configuration
-- Use this website to get the Control Index https://docs.fivem.net/docs/game-references/controls/
Config.HoldModifier = 21 -- Shift

Config.WinchSpeed = 0.02
Config.WinchRetractSpeed = 2.0

Config.AnimationProblems = false

Config.ShowKeybindPrompts = true

Config.DisableAllCommands = false

-- Vehicle Configuration
Config.AllowedVehicles = {
    {["SpawnCode"] = "as332", ["BoneName"] = "rope_attach_a", ["OpenDoorWhenWinchCreated"] = true, ["OpenDoorIndex"] = 3, ["WinchSideRight"] = true, ["HookExtra"] = -1},
    {["SpawnCode"] = "mh65", ["BoneName"] = "rope_attach_b", ["OpenDoorWhenWinchCreated"] = true, ["OpenDoorIndex"] = 3, ["WinchSideRight"] = true, ["HookExtra"] = 5},
    {["SpawnCode"] = "bell412", ["BoneName"] = "rope_attach_a", ["OpenDoorWhenWinchCreated"] = true, ["OpenDoorIndex"] = 3, ["WinchSideRight"] = true, ["HookExtra"] = -1},
    {["SpawnCode"] = "aw139", ["BoneName"] = "rope_attach_a", ["OpenDoorWhenWinchCreated"] = true, ["OpenDoorIndex"] = 3, ["WinchSideRight"] = true, ["HookExtra"] = 5},
    {["SpawnCode"] = "jayhawk", ["BoneName"] = "rope_attach_a", ["OpenDoorWhenWinchCreated"] = true, ["OpenDoorIndex"] = 3, ["WinchSideRight"] = true, ["HookExtra"] = 13},
    {["SpawnCode"] = "buzzard", ["Coordinates"] = vector3(0.0, 0.0, -1.0), ["OpenDoorWhenWinchCreated"] = true, ["OpenDoorIndex"] = 3, ["WinchSideRight"] = true},
}

-- Command Configuration

Config.WinchMenuCommand = "winchmenu"
Config.WinchMenuCommandPrompt = "Opens the winch menu."

Config.WinchCommand = "winch"
Config.WinchCommandAcePerms = false
Config.WinchCommandPrompt = "Create a winch."

Config.WinchRemoveCommand = "winchremove"
Config.WinchRemoveCommandAcePerms = false
Config.WinchRemoveCommandPrompt = "Removes the winch."

Config.WinchAttachCommand = "winchattach"
Config.WinchAttachCommandAcePerms = false
Config.WinchAttachCommandPrompt = "Attaches you to the closest winch hook."

Config.WinchDetachCommand = "winchdetach"
Config.WinchDetachCommandAcePerms = false
Config.WinchDetachCommandPrompt = "Detaches you from the winch hook you are currently attached to."
Config.WinchDetachCommandParamPrompt = "true if you wish to detach into the helicopter, else leave blank."

Config.WinchControlCommand = "winchcontrol"
Config.WinchControlCommandAcePerms = false
Config.WinchControlCommandPrompt = "Transfers control of your current winch to the specified player."

Config.CarryCommand = "winchcarry"
Config.CarryCommandAcePerms = false
Config.CarryCommandPrompt = "Carries the closest player ready to winch them."

Config.LitterCommand = "winchlitter"
Config.LitterCommandAcePerms = false
Config.LitterCommandPrompt = "Attaches litter to the winch you are controlling."

Config.LitterPickupCommand = "winchlitterpickup"
Config.LitterPickupCommandAcePerms = false
Config.LitterPickupCommandPrompt = "Carries the nearest player in a litter."


Config.BasketCommand = "winchbasket"
Config.BasketCommandAcePerms = false
Config.BasketCommandPrompt = "Attaches a rescue basket to the winch you are controlling."

Config.WinchCameraCommand = "winchcamera"
Config.WinchCameraCommandPrompt = "Toggles the winch camera."

-- Language Configuration
Config.ExtendHelp = "Extend Winch"
Config.RetractHelp = "Retract Winch"
Config.ControlOfWinchHelp = "You have been given control of a winch."
Config.ControllingWinchHelp = "You are already controlling a winch, you cannot spawn a new one."
Config.WinchRemovedHelp = "Winch removed."
Config.ControlHandedOverHelp = "Control handed over to Server ID:"
Config.HoverEngaged = "Hover Engaged"
Config.HoverDisengaged = "Hover Disengaged"
Config.NotPilot = "You are not the pilot of this helicopter so you cannot create a winch."

-- Menu Language
Config.Menu = {}
Config.Menu.CreateWinch = "~b~Create Winch"
Config.Menu.CreateWinchDesc = "Creates a winch."

Config.Menu.ToggleBasket = "Toggle Basket"
Config.Menu.ToggleBasketDesc = "Toggles basket on your current winch."

Config.Menu.ToggleLitter = "Toggle Litter"
Config.Menu.ToggleLitterDesc = "Toggles litter on your current winch."

Config.Menu.CarryPerson = "Carry Person"
Config.Menu.CarryPersonDesc = "Carries the nearest person."

Config.Menu.LitterPickup = "Litter Pickup"
Config.Menu.LitterPickupDesc = "Pick up nearest person into litter if attached to one."

Config.Menu.RemoveWinch = "~r~Remove Winch"
Config.Menu.RemoveWinchDesc = "Removes current winch."

Config.Menu.ToggleHover = "Toggle Hover"
Config.Menu.ToggleHoverDesc = "Toggles Helicopter Hover."

Config.Menu.GiveControl = "Give Control"
Config.Menu.GiveControlDesc = "Give winch control to the player."


-- Functions
Function = {}

function Function.ShowNotification( text )
    --EDIT BETWEEN THIS LINE
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
    --AND THIS LINE to change notification appearance
end