Shared = {}

Shared.DefaultProfilePicture = "https://twirpz.files.wordpress.com/2015/06/twitter-avi-gender-balanced-figure.png"

-- keybind : The menu is opened when a key is pressed, more specifically, Shared.Key
-- command : The menu is opened when a command is used, more specifically, shared.Command
-- custom  : The menu is opened when an export is triggered, more specifically, exports["zerio-invoice"]:Open()
Shared.OpenType = "custom"

-- Only for Shared.OpenType "keybind"
Shared.Key = "f7"

-- Only for Shared.OpenType "command"
Shared.Command = "invoice"

-- This is the max distance a player can be from you to show up on the list
-- If set to -1, no distance check will be performed
-- If set to nil, or removed, all players in the database will be shown
Shared.MaxInvoiceDistance = -1

-- Controls the transactions of the text in the script. View shared/translations
Shared.Translation = "en"

-- Has to be valid Javascript localizations and currencies.
-- Controls date/time and money formatting
Shared.Locale = "en-EN"
Shared.Currency = "NOK"

-- VAT Amount
Shared.VAT = 0.25

-- Controls which day weeks start on
-- true -> Weeks start on sunday
-- false -> Weeks start on monday
Shared.StartWeekOnSunday = false

-- Suffix and Prefix for some money inputs
Shared.Prefix = "$"
Shared.Suffix = nil

-- Controls wether the UI should close or stay open upon the player dying
-- true -> The UI closes upon the player dying
-- false -> Nothing happens upon the player dying
Shared.CloseOnDeath = true

-- If set to true, the invoice will be auto paid after the due date
Shared.AutoPayAfterDueDate = true