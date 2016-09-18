all: vim zsh tmux

vim:
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.vimrc
	@ln -sf $(shell pwd)/vim/vim $(HOME)/.config/nvim
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.config/nvim/init.vim
	@ln -sf $(shell pwd)/vim/vim $(HOME)/.vim

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

.PHONY: vim zsh tmux clean
