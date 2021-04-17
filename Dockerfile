FROM debian
WORKDIR /root
RUN apt update && apt install -y \
    wget \
    git \
    zsh \
    tmux \
 && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/usr/bin/zsh"]
RUN git clone --recurse-submodules https://github.com/chefdev/dotfiles.git ~/.dotfiles
RUN mv ~/.bashrc ~/.bashrc.old
RUN ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
RUN ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
RUN ln -s ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
RUN ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
RUN chsh -s $(which zsh)
