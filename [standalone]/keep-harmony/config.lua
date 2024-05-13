Config = {} or Config

------------------------------------------------------------------
-- Config
------------------------------------------------------------------
-- 🧙‍♂️ keep-harmony
Config.MagicTouch = false
Config.use_progressbar = true
Config.framework = 'qb'           -- [qb / esx]
Config.inventory = 'qb-inventory' -- qb-inventory / ox_inventory
Config.target = 'qb-target'       -- qb-target / ox_target
Config.menu = 'qb-menu'           -- [keep-menu / qb-menu / ox_lib]
Config.input = 'qb-input'         -- [keep-input / qb-input / ox_lib]
Config.notification = 'qb-menu'   -- [qb / esx / ox_lib / custom
Config.emote = 'dpemotes'         -- [dpemotes / rpemotes / scully_emotemenu]
Config.language = 'en'

-- This table allows for a direct connection to the configured resources. For instance,
-- if you are using a qb-inventory with a different name,
-- you need to update its name here to ensure it's gonna work correctly.
Config.resource_names = {
    framework = 'qb-core',
    inventory = 'qb-inventory',
    target = 'qb-target',
    menu = 'qb-menu',
    input = 'qb-input'
}
