include "mapping_2d.lua"

TRAJECTORY_BUILDER.pure_localization = true

POSE_GRAPH.constraint_builder.sampling_ratio = 0
POSE_GRAPH.global_sampling_ratio = 0

POSE_GRAPH.optimize_every_n_nodes = 0

POSE_GRAPH.constraint_builder.min_score = 0
POSE_GRAPH.constraint_builder.global_localization_min_score = 0

POSE_GRAPH.optimization_problem.odometry_translation_weight = 0
POSE_GRAPH.optimization_problem.odometry_rotation_weight = 0

return options