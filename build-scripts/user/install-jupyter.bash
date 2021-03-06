#!/bin/bash

echo -e '\n\e[1;36mInstalling Jupyter:\e[0m'

echo -e '\e[1;36m> Installing `jupyter`...\e[0m'
pip3 install --no-cache-dir jupyter >/dev/null

echo -e '\e[1;36m> Installing `jupyterlab`...\e[0m'
pip3 install --no-cache-dir jupyterlab >/dev/null

echo -e '\e[1;36m> Adding aliases for running a notebook server...\e[0m\n'
echo '
# Jupyter

## Aliases for running a notebook server
alias jnote="jupyter notebook --ip 0.0.0.0 --no-browser"
alias jlab="jupyter lab --ip 0.0.0.0 --no-browser"' >> ~/.zshrc
