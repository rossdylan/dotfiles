all: vim

vim:
	@ln -sf $(shell pwd)/vim/vimrc $(HOME)/.vimrc
	@ln -sf $(shell pwd)/vim/vim $(HOME)/.vim
	@echo symlinked vim files

clean:
	rm -f $(HOME)/.vimrc
	rm -f $(HOME)/.vim

.PHONY: vim clean
