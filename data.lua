--data.lua

local sprite_idle_filename = "__rosc-and-bart-bots__/graphics/entity/roscoe_idle2_transparent_resized.png"
local sprite_with_cargo_filename = "__rosc-and-bart-bots__/graphics/entity/graphics/entity/logistic-robot/roscoe_cargo_transparent_resized.png"
local sprite_travel_filename = "__rosc-and-bart-bots__/graphics/entity/roscoe_load_transparent_resized.png"
local sprite_remnant_filename = "__rosc-and-bart-bots__/graphics/entity/roscoe_tired_transparent_resized.png"

data.raw["logistic-robot"]["logistic-robot"].idle.filename = sprite_idle_filename
data.raw["logistic-robot"]["logistic-robot"].idle_with_cargo.filename = sprite_with_cargo_filename
data.raw["logistic-robot"]["logistic-robot"].in_motion.filename = sprite_travel_filename
data.raw["logistic-robot"]["logistic-robot"].in_motion_with_cargo.filename = sprite_with_cargo_filename
data.raw["logistic-robot"]["logistic-robot"].corpse = sprite_remnant_filename