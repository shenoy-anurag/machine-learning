# Overview
Practice and tutorial-style notebooks covering my Machine Learning and Deep Learning experiments/projects.

# File Structure
- `data/` is an empty folder which is used as a destination for the datasets.
- Notebooks are kept in the root of the project for now.

# Notebooks:
## Text Classification:
Classification of Newsgroup documents using four different approaches/algorithms.

#### Notebook: `classification-newsgroup-dataset.ipynb`

Blog post on the same: <https://shenoy-anurag.github.io/text-classification-on-newsgroup-data.html>

## Hindi Digit Recognizer:
Classification of Handwritten Hindi (Devanagari script) digits using Convolutional Neural Networks.

#### Notebook: `hindi-digit-recognition.ipynb`

Achieved **99.59%** accuracy on Test Dataset!

Blog post can be found here: <https://shenoy-anurag.github.io/hindi-mnist-recognizer.html>

## Intent Classification:
Classification of Intents using LSTMs (RNN).

#### Notebook: `intent-classification.ipynb`

This model can be used for a chatbot along with an NER model to pick up entities.

# System
MacBook Air (M1, 2020)

ARM64 architecture (arm64)

## Hardware:
Apple M1 chip
8-core CPU with 4 performance cores and 4 efficiency cores
7-core GPU, 8-core GPU
16-core Neural Engine
16 GB Ram

## Operating System:
MacOS Monterey 12.2.1 (21D62)

# Environment
## Conda [(miniforge3)](https://github.com/conda-forge/miniforge):
- conda version : 4.11.0
- python version : 3.9.7.final.0

## Libraries:
- tensorflow-macos==2.8.0
- tensorflow-metal==0.4.0

## Setting up an M1 for tensorflow:
1. First install xcode-select command-line utilities. 

    `xcode-select --install`

2. Installing Miniforge3
   1. Either using Homebrew:
   
      `brew install miniforge`
   2. Or, go to the [releases section](https://github.com/conda-forge/miniforge/releases/latest) of miniforge's github page, and find the *Miniforge3* file which corresponds to your system.
      
      Like: `Miniforge3-4.11.0-0-MacOSX-arm64.sh`
      1. Download the file to a folder.
      2. Open a terminal and change to the folder where you downloaded the install script.
      3. Run the command `chmod +x Miniforge3-4.11.0-0-MacOSX-arm64.sh` (don't forget to replace the file name with the name of the file you downloaded).
      4. Then install from the file by running `sh Miniforge3-4.11.0-0-MacOSX-arm64.sh` in your terminal.
      5. `source ~/miniforge3/bin/activate`

3. Initialize Miniforge using the command:
   
    `conda init`
4. Use this [Conda Cheatsheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf) to create a conda environment.
5. Activate the newly created conda environment.
6. To use your environment in Jupyter notebooks
   1. `conda install -y jupyter` (this command installs jupyter)
   2. `conda install nb_conda` (this command installs nb_conda, which adds conda env support to jupyter notebooks)
   3. And finally, add your environment to jupyter using 
      
      `python -m ipykernel install --user --name <env_name> --display-name <display_name>`
      
       Don't forget to replace <env_name> and <display_name> with the name you want.

If you face any issues in setting up your environment for M1 Macbooks, take a look at these resources:
- <https://developer.apple.com/metal/tensorflow-plugin/>
- <https://github.com/jeffheaton/t81_558_deep_learning/blob/master/install/tensorflow-install-mac-metal-jul-2021.ipynb>
- <https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf>
- <https://betterprogramming.pub/installing-tensorflow-on-apple-m1-with-new-metal-plugin-6d3cb9cb00ca>
