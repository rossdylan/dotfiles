all: vim

vim:
	@ln -sf ./vim/vimrc $(HOME)/.vimrc
	@ln -sf ./vim/vim $(HOME)/.vim
	@echo symlinked vim files

clean:
	rm -f $(HOME)/.vimrc
	rm -f $(HOME)/.vim

.PHONY: vim clean
