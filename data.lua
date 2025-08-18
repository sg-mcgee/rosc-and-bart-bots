--data.lua

local sprite_idle_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/roscoe_idle2_transparent_resized.png"
local sprite_with_cargo_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/roscoe_cargo_transparent_resized.png"
local sprite_travel_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/roscoe_loaf_transparent_resized.png"
local sprite_remnant_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/remnants/roscoe_tired_transparent_resized.png"

--Get filenames of sprites
data.raw["logistic-robot"]["logistic-robot"].idle.filename = sprite_idle_filename
data.raw["logistic-robot"]["logistic-robot"].idle_with_cargo.filename = sprite_with_cargo_filename
data.raw["logistic-robot"]["logistic-robot"].in_motion.filename = sprite_travel_filename
data.raw["logistic-robot"]["logistic-robot"].in_motion_with_cargo.filename = sprite_with_cargo_filename

--Set animations to only one frame 
data.raw["logistic-robot"]["logistic-robot"].idle.frame_count = 1
data.raw["logistic-robot"]["logistic-robot"].idle.direction_count = 1
data.raw["logistic-robot"]["logistic-robot"].in_motion.frame_count = 1
data.raw["logistic-robot"]["logistic-robot"].in_motion_with_cargo.frame_count = 1


--Define new remnant
local roscoe_remnant = table.deepcopy(data.raw["corpse"]["logistic-robot-remnants"])
roscoe_remnant.name = "roscoe-logistic-robot-remnants"
--Set values
roscoe_remnant.animation = {
    filename = sprite_remnant_filename,
    width = 80,
    height = 84,
    frame_count = 1,
    discretion_count = 1,
    shift = {0,0}
}

data:extend({roscoe_remnant})

--Point logistic robot to new remnants
data.raw["logistic-robot"]["logistic-robot"].corpse = "roscoe-logistic-robot-remnants"