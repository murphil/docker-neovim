FROM nnurphy/neovim:base

WORKDIR $HOME
RUN set -eux \
  ; git clone --depth=1 https://github.com/neovim/neovim.git \
  ; cd neovim \
  ; make CMAKE_INSTALL_PREFIX=$HOME/local/nvim install \
  ; cd $HOME/local \
  ; tar zcvf nvim.tar.gz nvim \
  ; rm -rf nvim \
  ; mv nvim.tar.gz / \
  ; cd $HOME \
  ; rm -rf neovim
