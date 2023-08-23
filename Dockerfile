FROM registry.fedoraproject.org/fedora-toolbox:38

RUN dnf update -y && \
  dnf copr enable -y atim/starship && \
  dnf copr enable -y varlad/helix && \
  dnf install -y make \
  golang \
  zsh \
  openssl \
  ansible \
  jq \
  neovim \
  starship \
  helix && \
  dnf groupinstall -y "Development tools" && \
  dnf clean all
