_base_ = [
    'av2_newsplit_608_60x30_30e.py'
]

# overwrite only the PKL paths
data = dict(
    train=dict(
        ann_file='./datasets/argoverse2_geosplit/av2_map_infos_train.pkl',
    ),
    val=dict(
        ann_file='./datasets/argoverse2_geosplit/av2_map_infos_val.pkl',
    ),
    test=dict(
        ann_file='./datasets/argoverse2_geosplit/av2_map_infos_val.pkl',
    ),
)

eval_config = dict(
    ann_file='./datasets/argoverse2_geosplit/av2_map_infos_val.pkl',
)