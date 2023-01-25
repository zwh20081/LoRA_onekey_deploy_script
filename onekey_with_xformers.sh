echo made by bilibili@zwh20081
git clone https://github.moeyy.xyz/https://github.com/facebookresearch/xformers.git
cd xformers
git submodule update --init --recursive
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
