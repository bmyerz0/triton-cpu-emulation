pip install -r requirements.txt
pip install torch --index-url https://download.pytorch.org/whl/cpu
pip uninstall -y triton
git clone https://github.com/bmyerz0/triton.git
cd triton && git fetch && git checkout dev/bmyerz0/codespaces-support; cd - 
cd triton/python && pip install --verbose -e .; cd -
