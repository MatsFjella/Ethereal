Config = {} or Config

-- First things first, let's set the name of the item that players need to add as paper to the notepad.
-- We'll call it "papers" because, well, that's what they are!
Config.paper = 'papers'

-- Next up, we need to create a box that gives players some papers when they open it.
-- It's like a magical paper dispenser! We'll call it "paperBox" and it gives out 50 papers.
Config.paperBox = {
    item_name = 'paperbox',
    amount = 50
}

-- Now, let's add some items to players' wishlists.
-- We've created a sample wishlist for the "blackmarket" category, which includes a lockpick.
-- If players add this item to their notepad, it'll automatically be added to their wishlist!
local wishlist = {
    blackmarket = {
        {
            label = 'Pistol',
            value = 'pistol',
        },
        {
            label = 'Ammo',
            value = 'ammo',
        },
        {
            label = 'Weed',
            value = 'weed',
        },
        {
            label = 'LSD',
            value = 'lsd',
        },
        {
            label = 'Meth',
            value = 'meth',
        },
        {
            label = 'Kokain',
            value = 'kokain',
        },
        {
            label = 'Heroin',
            value = 'heroin',
        },
    }
}

------------------------------------------------------------------
-- Alright, time to get to the good stuff: creating custom notepads!
------------------------------------------------------------------

Config.items = {
    -- First up, we've got the simple "note" item. It's just a written note, nothing fancy.
    note = {
        item_name = 'note'
    },
    -- Now, let's create a custom notepad with a "note" theme.
    -- We'll call it "notepad" and it can hold up to 30 papers.
    -- Players can use this notepad to keep track of all their important notes and thoughts!
    notepad = {
        notepad = true,
        item_name = 'notepad',
        maxPaper = 30,
        theme = 'note',
    },
    -- But wait, there's more! We can also create a notepad with a custom theme.
    -- Let's create one with a "paper" theme, and we'll call it "notepad2".
    -- This notepad can also hold up to 30 papers, and it comes with a pre-defined wishlist for the black market category.
    notepad2 = {
        notepad = true,
        item_name = 'notepad2',
        maxPaper = 30,
        theme = 'paper',
        wishlist = wishlist.blackmarket,
    },
}

-- And that's it, folks! With this config file, you're ready to create all kinds of cool notepads for your game.
