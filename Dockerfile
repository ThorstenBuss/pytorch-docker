FROM pytorch/pytorch:2.4.0-cuda12.4-cudnn9-runtime
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y git git-lfs wget zsh dvipng build-essential cmake texlive texlive texlive-lang-english texlive-latex-extra texlive-fonts-recommended cm-super htop
RUN conda install -y -c conda-forge -c comet_ml h5py scikit-learn scipy matplotlib torchinfo torchmetrics comet_ml pyro-ppl pandas
RUN pip install torchtestcase
RUN pip install git+https://github.com/ThorstenBuss/nflows.git@707e933c254ce05adff9e482394ac4aaeb3b6a72
RUN pip install git+https://github.com/crowsonkb/k-diffusion.git@0c6cc822e050e59d3e59128c57d350074969b267
