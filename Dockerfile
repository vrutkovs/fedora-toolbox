FROM registry.fedoraproject.org/fedora-toolbox:39

RUN dnf update -y && \
  dnf copr enable -y atim/starship && \
  dnf copr enable -y atim/lazygit && \
  dnf groupinstall -y "Development tools" && \
  dnf install -y \
    make \
    golang \
    zsh \
    openssl \
    ansible \
    jq \
    neovim \
    starship \
    lazygit \
    fira-code-fonts \
    && dnf clean all
