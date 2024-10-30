local constants = require("prototypes.constants")

local connector_def = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 0, main_offset = util.by_pixel(5, -18), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -18), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
})

local curve_connector_def = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 0, main_offset = util.by_pixel(5, -32), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -32), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, 2), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, 2), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
})

local t_connector_def = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 0, main_offset = util.by_pixel(5, -18), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -10), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
})

local cross_connector_def = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
  { variation = 0, main_offset = util.by_pixel(5, -14), shadow_offset = util.by_pixel(2, 0), draw_shadow = true },
})

data:extend({
  {
    type = "storage-tank",
    name = "duct-small",
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-small.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct-small" },
    fast_replaceable_group = "ducts",
    max_health = 400,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.79, -0.49 }, { 0.79, 0.49 } },
    selection_box = { { -1, -0.5 }, { 1, 0.5 } },
    fluid_box = {
      volume = constants.volume / 4,
      pipe_covers = nil,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.25 } },
        { direction = defines.direction.south, connection_category = "ducts", position = { 0, 0.25 } },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_vertical.png",
              height = 160,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_vertical_shadow.png",
              height = 160,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_horizontal.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_horizontal_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              shift = {
                0.5,
                0,
              },
              width = 128,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_vertical.png",
              height = 160,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_vertical_shadow.png",
              height = 160,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_horizontal.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 128,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_small/hr_duct_small_straight_horizontal_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              shift = {
                0.5,
                0,
              },
              width = 128,
            },
          },
        },
      },
      gas_flow = util.empty_sprite(),
      fluid_background = util.empty_sprite(),
      window_background = util.empty_sprite(),
      flow_sprite = util.empty_sprite(),
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = connector_def.points,
    circuit_connector_sprites = connector_def.sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "storage-tank",
    name = "duct",
    icon = "__FluidMustFlow__/graphics/icon/entities/duct.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct" },
    fast_replaceable_group = "ducts",
    max_health = 800,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.79, -0.99 }, { 0.79, 0.99 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      volume = constants.volume / 2,
      pipe_covers = nil,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.5 } },
        { direction = defines.direction.south, connection_category = "ducts", position = { 0, 0.5 } },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_horizontal.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_horizontal_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_vertical_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_horizontal.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_horizontal_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct/hr_duct_vertical_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
      },
      gas_flow = util.empty_sprite(),
      fluid_background = util.empty_sprite(),
      window_background = util.empty_sprite(),
      flow_sprite = util.empty_sprite(),
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = connector_def.points,
    circuit_connector_sprites = connector_def.sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "storage-tank",
    name = "duct-long",
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-long.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct-long" },
    fast_replaceable_group = "ducts",
    max_health = 1600,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.79, -1.99 }, { 0.79, 1.99 } },
    selection_box = { { -1, -2 }, { 1, 2 } },
    fluid_box = {
      volume = constants.volume,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -1.5 } },
        { direction = defines.direction.south, connection_category = "ducts", position = { 0, 1.5 } },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_horizontal.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_horizontal_shadow.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_vertical_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_horizontal.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_horizontal_shadow.png",
              height = 360,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_vertical.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_long/hr_duct_long_vertical_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 512,
            },
          },
        },
      },
      gas_flow = util.empty_sprite(),
      fluid_background = util.empty_sprite(),
      window_background = util.empty_sprite(),
      flow_sprite = util.empty_sprite(),
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = connector_def.points,
    circuit_connector_sprites = connector_def.sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "storage-tank",
    name = "duct-t-junction",
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-t-junction.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct-t-junction" },
    fast_replaceable_group = "ducts",
    max_health = 400,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.99, -0.99 }, { 0.99, 0.79 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      volume = constants.volume / 2,
      pipe_covers = nil,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.5 } },
        { direction = defines.direction.east, connection_category = "ducts", position = { 0.5, 0 } },
        { direction = defines.direction.west, connection_category = "ducts", position = { -0.5, 0 } },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_up.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_up_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_right.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_right_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_down.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_down_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_left.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_T/hr_duct_T_left_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
      },
      gas_flow = util.empty_sprite(),
      fluid_background = util.empty_sprite(),
      window_background = util.empty_sprite(),
      flow_sprite = util.empty_sprite(),
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = t_connector_def.points,
    circuit_connector_sprites = t_connector_def.sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "storage-tank",
    name = "duct-curve",
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-curve.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct-curve" },
    fast_replaceable_group = "ducts",
    max_health = 400,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.99, -0.99 }, { 0.79, 0.79 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      volume = constants.volume / 4,
      pipe_covers = nil,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.5 } },
        { direction = defines.direction.west, connection_category = "ducts", position = { -0.5, 0 } },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_left.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_left_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_right.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_up_right_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_right.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_right_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_left.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_corner/hr_duct_corner_down_left_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
      },
      gas_flow = util.empty_sprite(),
      fluid_background = util.empty_sprite(),
      window_background = util.empty_sprite(),
      flow_sprite = util.empty_sprite(),
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = curve_connector_def.points,
    circuit_connector_sprites = curve_connector_def.sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "storage-tank",
    name = "duct-cross",
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-cross.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.8, result = "duct-cross" },
    fast_replaceable_group = "ducts",
    max_health = 400,
    corpse = "small-remnants",
    dying_explosion = "storage-tank-explosion",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.99, -0.99 }, { 0.99, 0.99 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    fluid_box = {
      volume = constants.volume,
      pipe_covers = nil,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.5 } },
        { direction = defines.direction.east, connection_category = "ducts", position = { 0.5, 0 } },
        { direction = defines.direction.south, connection_category = "ducts", position = { 0, 0.5 } },
        { direction = defines.direction.west, connection_category = "ducts", position = { -0.5, 0 } },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    window_bounding_box = { { 0, 0 }, { 0, 0 } },
    flow_length_in_ticks = 360,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
            {
              draw_as_shadow = true,
              filename = "__FluidMustFlow__/graphics/entity/duct/duct_cross/hr_duct_cross_shadow.png",
              height = 256,
              priority = "high",
              scale = 0.5,
              width = 256,
            },
          },
        },
      },
      gas_flow = util.empty_sprite(),
      fluid_background = util.empty_sprite(),
      window_background = util.empty_sprite(),
      flow_sprite = util.empty_sprite(),
    },
    working_sound = {
      sound = { { filename = "__base__/sound/pipe.ogg", volume = 0.25 } },
      match_volume_to_activity = true,
      max_sounds_per_type = 3,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = cross_connector_def.points,
    circuit_connector_sprites = cross_connector_def.sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "pipe-to-ground",
    name = "duct-underground",
    icon = "__FluidMustFlow__/graphics/icon/entities/duct-to-ground.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.4, result = "duct-underground" },
    fast_replaceable_group = "ducts",
    max_health = 800,
    corpse = "small-remnants",
    resistances = data.raw["pipe"]["pipe"].resistances,
    collision_box = { { -0.79, -0.79 }, { 0.79, 0.7 } },
    selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
    fluid_box = {
      volume = constants.volume / 4,
      pipe_connections = {
        { direction = defines.direction.north, connection_category = "ducts", position = { 0, -0.5 } },
        {
          connection_type = "underground",
          direction = defines.direction.south,
          connection_category = "ducts",
          position = { 0, 0.5 },
          max_underground_distance = settings.startup["fmf-underground-duct-max-length"].value --[[@as uint8]],
        },
      },
      hide_connection_info = true,
      max_pipeline_extent = constants.extent,
    },
    underground_sprite = {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    pictures = {
      north = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-up.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-up_shadow.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      east = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_right.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_right_shadow.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      south = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_down.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct_ground_down_shadow.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
      west = {
        layers = {
          {
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-left.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
          {
            draw_as_shadow = true,
            filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/hr_duct-ground-left_shadow.png",
            height = 256,
            priority = "high",
            scale = 0.5,
            width = 256,
          },
        },
      },
    },
    visualization = {
      north = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
      east = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
      south = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
      west = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
    },
    disabled_visualization = {
      north = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
      east = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
      south = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
      west = {
        filename = "__FluidMustFlow__/graphics/entity/duct/duct-ground/duct_ground_visualization.png",
        size = 128,
        scale = 0.5,
        flags = { "icon" },
      },
    },
  },
})

-- Duct joining
if settings.startup["fmf-enable-duct-auto-join"].value then
  data.raw["storage-tank"]["duct"].minable = { mining_time = 0.8, result = "duct-small", count = 2 }
  data.raw["storage-tank"]["duct"].placeable_by = { item = "duct-small", count = 2 }
  data.raw["storage-tank"]["duct-long"].minable = { mining_time = 0.8, result = "duct-small", count = 4 }
  data.raw["storage-tank"]["duct-long"].placeable_by = { item = "duct-small", count = 4 }
end
