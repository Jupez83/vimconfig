#!/bin/bash
cd vim

# Set up pathogen
mkdir -p autoload && mkdir -p bundle
cd autoload && curl -LSso pathogen.vim https://tpo.pe/pathogen.vim

# Pull down any plugins we want
cd ../bundle
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/kien/ctrlp.vim.git
