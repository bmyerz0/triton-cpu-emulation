    FROM  mcr.microsoft.com/devcontainers/universal:2

RUN pip install -r requirements.txt
RUN pip install torch --index-url https://download.pytorch.org/whl/cpu
RUN pip uninstall triton
RUN cd triton/python && pip install --verbose -e .
