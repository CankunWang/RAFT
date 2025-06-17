#!/bin/bash


echo "脚本开始执行: $(date)"
echo "当前目录: $(pwd)"
echo "目录列表:"
ls -l

echo "-> which py: $(which py || true)"
echo "-> py launcher version:"
py -0p
mkdir -p /e/RAFT/checkpoints
#python -u train.py --name raft-chairs --stage chairs --validation chairs --gpus 0 --num_steps 120000 --batch_size 8 --lr 0.00025 --image_size 368 496 --wdecay 0.0001 --mixed_precision
#python -u train.py --name raft-things --stage things --validation sintel --restore_ckpt checkpoints/raft-chairs.pth --gpus 0 --num_steps 120000 --batch_size 5 --lr 0.0001 --image_size 400 720 --wdecay 0.0001 --mixed_precision
#python -u train.py --name raft-sintel --stage sintel --validation sintel --restore_ckpt checkpoints/raft-things.pth --gpus 0 --num_steps 120000 --batch_size 5 --lr 0.0001 --image_size 368 768 --wdecay 0.00001 --gamma=0.85 --mixed_precision
"/c/Users/Administrator/AppData/Local/Programs/Python/Python311/python.exe" -u train.py --name raft-kitti  --stage kitti --validation kitti --restore_ckpt /e/RAFT/Pretrained_model/raft-kitti.pth --gpus 0 --num_steps 50000 --batch_size 1 --lr 0.0001 --image_size 288 960 --wdecay 0.00001 --gamma=0.85 --mixed_precision
echo "脚本结束: $?"