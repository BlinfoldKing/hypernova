build:
	@cargo install --path . --force

install:
	@sudo apt-get install neovim
	@curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@pip3 install --user pynvim
	@cp ./init.vim ${HOME}/.config/nvim/init.vim
	@cp ./plug.vim ${HOME}/.config/nvim/plug.vim
	@cp ./command.vim ${HOME}/.config/nvim/command.vim
	@nvim +PlugInstall +qall
	@hypernova
