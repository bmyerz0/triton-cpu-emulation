# Triton tutorial Codespace: Start using Triton with ZERO setup

Normally, [Triton](https://github.com/openai/triton) requires having a CUDA compute compatible GPU and installed device drivers.

But if you **just want to try the language or start learning**, this Codespace offers a pre-configured environment that runs in the cloud. It only requires a Github account.

# How start the Triton tutorial Codespace

1. Go to [Github Codespaces](https://github.com/codespaces) (you must have a Github account and sign in)
2. Click **New Codespace**
3. For **Repository**, type in and select **bmyerz0/triton-cpu-emulation**
4. For all other options, leave them as the defaults
5. The first time you open the Codespace, you will need to wait a few moments for installation (seen in **TERMINAL** tab) to finish. It will say **Running updateContentCommand...** while busy. Once finished, the **TERMINAL** tab has a shell promt.

# Run the Triton tutorials
The Codespace comes with a subset of the [Triton tutorials](https://triton-lang.org/main/getting-started/tutorials/index.html).

To find the tutorial source code, navigate in the file explorer pane to triton/python/tutorials.

To run the tutorials

```
cd triton/python/tutorials
python 01-vector-add.py
```

# Take the in-depth tutorial
The Codespace contains in-depth tutorials in Jupyter notebooks.

1. Open the notebooks in the notebooks folder.
2. The first time you **Run All** in a notebook with Python code (softmax.ipynb), you might need to select a kernel. Choose **Python Environments...** then **Python 3.10.8**.

# Limitations of the Codespace

## Runs in Triton interpreter
The Codespace runs on a CPU VM. To run Triton code on the CPU, the tutorials have been modified to use the "Triton interpreter". The interpreter supports most but not all of the Triton language.

If you want to see how the original tutorials have been modified to run on the interpreter, see [this diff](https://github.com/openai/triton/commit/38290abfea7a3c8c277baaa9d90e02847445ea46).

## Not on latest Triton commit

The Codespace currently uses a [patch on a particular commit of Triton](https://github.com/bmyerz0/triton/tree/dev/bmyerz0/codespaces-support-with-tutorials). This commit is newer than Triton 2.0 release, but older than HEAD.

The patch is required for running the Triton interpreter on a CPU version of Pytorch. There are several places that assume device='cuda' even though device='cpu' actually works fine for the interpreter.

## Tips

The Codespace uses free tier time on Azure.
When you are not using the Codespace, go to [Github Codespaces](https://github.com/codespaces) and stop it.

# Just view the notebooks without running them

You can look at the  [static notebooks from within Github](https://github.com/bmyerz0/triton-cpu-emulation/tree/main/notebooks).
