all: vim nvim zsh tmux

nvim:
	@mkdir -p $(HOME)/.config/nvim
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.config/nvim/init.vim
	@ln -sf $(shell pwd)/vim/vim/autoload $(HOME)/.config/nvim/autoload
	@ echo symlinked nvim files

vim:
	@mkdir -p $(HOME)/.vim
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.vimrc
	@ln -sf $(shell pwd)/vim/vim/autoload $(HOME)/.vim/autoload
	@echo symlinked vim files

zsh:
	mkdir -p $(HOME)/.zsh
	@ln -sf $(shell pwd)/zsh/zshrc $(HOME)/.zsh/
	@ln -sf $(shell pwd)/zsh/*.zsh $(HOME)/.zsh/
	@echo symlinked .zshrc

tmux:
	@ln -sf $(shell pwd)/tmux/tmux.conf $(HOME)/.tmux.conf
	@echo symlinked tmux files

clean:
	rm -f $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm -f $(HOME)/.zshrc
	rm -rf $(HOME)/.oh-my-zsh
	rm -rf $(HOME)/.tmux.conf

.PHONY: vim nvim zsh tmux clean
