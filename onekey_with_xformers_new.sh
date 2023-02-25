echo made by bilibili@zwh20081
cd ../ # 返回到sd-scripts的上一级目录
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install torch torchvision --extra-index-url https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/
git clone https://github.com/facebookresearch/xformers/
cd xformers

git submodule update --init --recursive
export FORCE_CUDA="1"
# 进入https://developer.nvidia.com/cuda-gpus#compute
# 设置所用显卡对应的Compute Capability，3090和A5000都是8.6
export TORCH_CUDA_ARCH_LIST=8.6


pip install -r requirements.txt
pip install -e .
git clone https://github.com/derrian-distro/LoRA_Easy_Training_Scripts
cd LoRA_Easy_Training_Scripts
git submodule init
git submodule update
cd sd-scripts


pip install  --upgrade -r requirements.txt

accelerate config


echo deploy completed!
echo use "accelerate launch --num_cpu_threads_per_process 12 "with python file to run..
