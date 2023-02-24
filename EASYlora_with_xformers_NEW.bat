echo made by bilibili@zwh20081
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip3 install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu117
pip install --use-pep517 --upgrade -r requirements.txt
git clone https://github.com/facebookresearch/xformers/
cd xformers

git submodule update --init --recursive


pip install -r requirements.txt
pip install -e .
cd ..
git clone https://gitclone.com/github.com/derrian-distro/LoRA_Easy_Training_Scripts.git
cd LoRA_Easy_Training_Scripts
git submodule init
git submodule update



accelerate config


echo deploy completed!
echo use "accelerate launch --num_cpu_threads_per_process 12 "with python file to run..