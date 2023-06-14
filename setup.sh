pip install -r requirements.txt
pip install torch --index-url https://download.pytorch.org/whl/cpu
pip uninstall -y triton
git clone https://github.com/openai/triton.git
cd triton/python && pip install --verbose -e .; cd -
