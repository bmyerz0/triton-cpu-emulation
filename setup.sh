pip install -r requirements.txt
pip install torch --index-url https://download.pytorch.org/whl/cpu
pip uninstall triton
pushd triton/python
pip install --verbose -e .
popd
