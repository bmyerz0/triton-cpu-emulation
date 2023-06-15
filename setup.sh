pip install -r requirements.txt
pip install torch --index-url https://download.pytorch.org/whl/cpu
pip uninstall -y triton
git clone https://github.com/bmyerz0/triton.git
cd triton && git fetch && git checkout dev/bmyerz0/codespaces-support; cd - 
pip install triton-2.1.0-cp310-cp310-linux_x86_64.whl
