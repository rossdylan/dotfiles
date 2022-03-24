all: vim zsh tmux git

vim:
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.vimrc
	@ln -sf $(shell pwd)/vim/vim $(HOME)/.vim
	@mkdir -p $(HOME)/.config/nvim
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.config/nvim/init.vim

	@echo symlinked vim files

zsh:
	mkdir -p $(HOME)/.zsh
	@ln -sf $(shell pwd)/zsh/zshrc $(HOME)/.zshrc
	@ln -sf $(shell pwd)/zsh/*.zsh $(HOME)/.zsh/
	@echo symlinked .zshrc

tmux:
	@ln -sf $(shell pwd)/tmux/tmux.conf $(HOME)/.tmux.conf
	@echo symlinked tmux files

git:
	@ln -sf $(shell pwd)/git/gitconfig $(HOME)/.gitconfig
	@echo symlinked git files

clean:
	rm -f $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm -f $(HOME)/.zshrc
	rm -rf $(HOME)/.oh-my-zsh
	rm -rf $(HOME)/.tmux.conf
	rm -rf $(HOME)/.ctags
	rm -rf $(HOME)/.gitconfig
	rm -rf $(HOME)/.git_template

.PHONY: vim zsh tmux git clean
