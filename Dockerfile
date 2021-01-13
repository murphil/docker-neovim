FROM nnurphy/neovim:base

WORKDIR $HOME
RUN set -eux \
  ; git clone --depth=1 https://github.com/neovim/neovim.git \
  ; cd neovim \
  ; make CMAKE_INSTALL_PREFIX=$HOME/local/nvim install \
  ; cd $HOME \
  ; rm -rf neovim
