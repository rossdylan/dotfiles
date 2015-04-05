all: vim zsh

vim:
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.vimrc
	@ln -sf $(shell pwd)/vim/vim $(HOME)/.vim
	@echo symlinked vim files

zsh:
	@git clone git://github.com/robbyrussell/oh-my-zsh.git $(HOME)/.oh-my-zsh
	@echo installed oh-my-zsh
	@ln -sf $(shell pwd)/zsh/zshrc $(HOME)/.zshrc
	@echo symlinked .zshrc

tmux:
	@ln -sf $(shell pwd)/tmux/tmux.conf $(home)/.tmux.conf
	@echo symlinked tmux files

clean:
	rm -f $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm -f $(HOME)/.zshrc
	rm -rf $(HOME)/.oh-my-zsh
	rm -rf $(HOME)/.tmux.conf

.PHONY: vim zsh tmux clean
