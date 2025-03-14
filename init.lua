local S = core.get_translator("sword_axe")

local function register_sword_axe(material, description, texture, tool_caps, damage, recipe_material, sword_name)
    minetest.register_tool("sword_axe:" .. material .. "_sword_axe", {
        description = description .. " " .. S("sword-axe"),
        inventory_image = texture,
        wield_image = texture,
        tool_capabilities = {
            full_punch_interval = tool_caps.full_punch_interval,
            max_drop_level = tool_caps.max_drop_level,
            groupcaps = tool_caps.groupcaps,
            damage_groups = {fleshy = damage},
        },
        sound = {breaks = "default_tool_breaks"},
        range = 8,
    })

    -- Рецепт крафту
    minetest.register_craft({
        output = "sword_axe:" .. material .. "_sword_axe",
        recipe = {
            {"", recipe_material, recipe_material},
            {"", recipe_material, sword_name},
            {"", "default:stick", ""},
        },
    })
end

-- Реєстрація меч-сокир

-- Залізна

register_sword_axe(
    "steel", -- Матеріал
    S("Steel"), -- Префікс
    "sword_axe_steel.png", -- Текстура
    {
		full_punch_interval = 1.0,
		max_drop_level=1,
        groupcaps = {
            choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
            snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
        },
    },
    6, -- Пошкодження для сутностей
    "default:steel_ingot", -- Матеріал для крафту
    "default:sword_steel" -- Меч для крафту
)

register_sword_axe(
    "bronze",
    S("Bronze"),
    "sword_axe_bronze.png",
    {
        full_punch_interval = 1.0,
        max_drop_level = 1,
        groupcaps = {
            choppy={times={[1]=2.75, [2]=1.70, [3]=1.15}, uses=20, maxlevel=2},
            snappy={times={[1]=2.75, [2]=1.30, [3]=0.375}, uses=25, maxlevel=2},
        },
    },
    6,
    "default:bronze_ingot",
    "default:sword_bronze"
)

register_sword_axe(
    "mese",
    S("Mese"),
    "sword_axe_mese.png",
    {
        full_punch_interval = 0.9,
        max_drop_level = 1,
        groupcaps = {
            choppy={times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=20, maxlevel=3},
            snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
        },
    },
    7,
    "default:mese_crystal",
    "default:sword_mese"
)

register_sword_axe(
    "diamond",
    S("Diamond"),
    "sword_axe_diamond.png",
    {
        full_punch_interval = 0.9,
        max_drop_level = 3,
        groupcaps = {
            choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=3},
            snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
        },
    },
    8,
    "default:diamond",
    "default:sword_diamond"
)
