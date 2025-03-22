FROM registry.fedoraproject.org/fedora-toolbox:42

RUN dnf update -y && \
    dnf copr enable -y atim/starship && \
    dnf copr enable -y atim/lazygit && \
    dnf install -y \
    make \
    golang \
    zsh \
    openssl \
    ansible \
    python3-ansible-lint \
    jq \
    starship \
    lazygit \
    fira-code-fonts \
    cargo \
    rust \
    fzf \
    helix \
    golang-x-tools-gopls \
    chromium-browser \
    delta \
    nc \
    && dnf clean all
