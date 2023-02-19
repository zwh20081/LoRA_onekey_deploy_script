echo made by bilibili@zwh20081
cd ../ # 返回到sd-scripts的上一级目录

git clone https://github.com/facebookresearch/xformers/
cd xformers

git submodule update --init --recursive
export FORCE_CUDA="1"
# 进入https://developer.nvidia.com/cuda-gpus#compute
# 设置所用显卡对应的Compute Capability，3090和A5000都是8.6
export TORCH_CUDA_ARCH_LIST=8.6


pip install -r requirements.txt
pip install -e .
git clone https://github.moeyy.xyz/https://github.com/kohya-ss/sd-scripts.git
cd sd-scripts

pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116
pip install --use-pep517 --upgrade -r requirements.txt

accelerate config
apt update&&apt install aria2
aria2c https://jsd.cdn.zzko.cn/gh/derrian-distro/LoRA_Easy_Training_Scripts@main/lora_train_command_line.py
echo deploy completed!
echo use "accelerate launch --num_cpu_threads_per_process 12 "with python file to run..
