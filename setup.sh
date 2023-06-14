pip install -r requirements.txt
pip install torch --index-url https://download.pytorch.org/whl/cpu
pip uninstall -y triton
cd triton/python && pip install --verbose -e .; cd -
