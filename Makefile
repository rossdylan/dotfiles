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

clean:
	rm -f $(HOME)/.vimrc
	rm -rf $(HOME)/.vim
	rm -f $(HOME)/.zshrc
	rm -rf $(HOME)/.oh-my-zsh

.PHONY: vim zsh clean
