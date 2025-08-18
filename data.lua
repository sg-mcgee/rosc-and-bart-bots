--data.lua

local sprite_idle_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/roscoe_idle2_transparent_resized.png"
local sprite_with_cargo_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/roscoe_cargo_transparent_resized.png"
local sprite_travel_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/roscoe_loaf_transparent_resized.png"
local sprite_remnant_filename = "__rosc-and-bart-bots__/graphics/entity/logistic-robot/remnants/roscoe_tired_transparent_resized.png"

--Define logistic sprite animations
local sprite_idle = {
    filename = sprite_idle_filename,
    width = 80,
    height = 84,
    frame_count = 1,
    direction_count = 1,
    line_length = 1,
    scale = 0.5
}

local sprite_motion = {
    filename = sprite_travel_filename,
    width = 80,
    height = 84,
    frame_count = 1,
    direction_count = 1,
    line_length = 1,
    scale = 0.5
}

local sprite_idle_with_cargo = {
    filename = sprite_with_cargo_filename,
    width = 80,
    height = 84,
    frame_count = 1,
    direction_count = 1,
    line_length = 1,
    scale = 0.5
}

local sprite_motion_with_cargo = {
    filename = sprite_with_cargo_filename,
    width = 80,
    height = 84,
    frame_count = 1,
    direction_count = 1,
    line_length = 1,
    scale = 0.5
}

data.raw["logistic-robot"]["logistic-robot"].idle = sprite_idle
data.raw["logistic-robot"]["logistic-robot"].in_motion = sprite_motion
data.raw["logistic-robot"]["logistic-robot"].idle_with_cargo = sprite_idle_with_cargo
data.raw["logistic-robot"]["logistic-robot"].in_motion_with_cargo = sprite_motion_with_cargo

--Define new remnant
local roscoe_remnant = table.deepcopy(data.raw["corpse"]["logistic-robot-remnants"])
roscoe_remnant.name = "roscoe-logistic-robot-remnants"
--Set values
roscoe_remnant.animation = {
    filename = sprite_remnant_filename,
    width = 80,
    height = 84,
    frame_count = 1,
    direction_count = 1,
    shift = {0,0}
}

data:extend({roscoe_remnant})

--Point logistic robot to new remnants
data.raw["logistic-robot"]["logistic-robot"].corpse = "roscoe-logistic-robot-remnants"