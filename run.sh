conda activate maptracker
pip install ipython

# Training
bash tools/dist_train.sh plugin/configs/argoverse2_geosplit_608_60x30_30e.py 8
bash tools/dist_train.sh plugin/configs/nusc_baseline_480_60x30_30e.py 8

# Evaluation
bash tools/dist_test.sh plugin/configs/argoverse2_geosplit_608_60x30_30e.py work_dirs/argoverse2_geosplit_608_60x30_30e/latest.pth 8 --eval
bash tools/dist_test.sh plugin/configs/nusc_baseline_480_60x30_30e.py work_dirs/nusc_baseline_480_60x30_30e/latest.pth 8 --eval