conda activate maptracker
pip install ipython

CUDA_VISIBLE_DEVICES=1,2,3,4,5,6,7 bash tools/dist_train.sh plugin/configs/argoverse2_geosplit_608_60x30_30e.py 7