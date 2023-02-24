echo made by bilibili@zwh20081
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu117
pip install --use-pep517 --upgrade -r requirements.txt
git clone https://github.com/facebookresearch/xformers/
cd xformers

git submodule update --init --recursive
export FORCE_CUDA="1"
# 进入https://developer.nvidia.com/cuda-gpus#compute
# 设置所用显卡对应的Compute Capability，3090和A5000都是8.6
export TORCH_CUDA_ARCH_LIST=8.6


pip install -r requirements.txt
pip install -e .
cd ..
git clone https://gitclone.com/github.com/derrian-distro/LoRA_Easy_Training_Scripts.git
cd LoRA_Easy_Training_Scripts
git submodule init
git submodule update



accelerate config
apt update&&apt install aria2

echo deploy completed!
echo use "accelerate launch --num_cpu_threads_per_process 12 "with python file to run..