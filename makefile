.PHONY: install
install:
	ln -s $(shell pwd)/config/i3 $(HOME)/.config/i3
	ln -s $(shell pwd)/config/dunst $(HOME)/.config/dunst
	ln -s $(shell pwd)/config/compton.conf $(HOME)/.config/compton.conf
	ln -s $(shell pwd)/config/i3status $(HOME)/.config/i3status
	ln -s $(shell pwd)/config/rofi $(HOME)/.config/rofi
	ln -s $(shell pwd)/config/zathura $(HOME)/.config/zathura
	ln -s $(shell pwd)/config/nvim $(HOME)/.config/nvim
	ln -s $(shell pwd)/config/zshrc $(HOME)/.zshrc
	ln -s $(shell pwd)/config/Xresources $(HOME)/.Xresources
	ln -s $(shell pwd)/config/bashrc $(HOME)/.bashrc
	ln -s $(shell pwd)/script $(HOME)/.script

.PHONY: clean
clean:
	[ -L $(HOME)/.config/i3 ] && \
	[ $(shell readlink -f $(HOME)/.config/i3) = $(shell pwd)/config/i3 ] && \
	rm $(HOME)/.config/i3
	[ -L $(HOME)/.config/dunst ] && \
	[ $(shell readlink -f $(HOME)/.config/dunst) = $(shell pwd)/config/dunst ] && \
	rm $(HOME)/.config/dunst
	[ -L $(HOME)/.config/compton.conf ] && \
	[ $(shell readlink -f $(HOME)/.config/compton.conf) = $(shell pwd)/config/compton.conf ] && \
	rm $(HOME)/.config/compton.conf
	[ -L $(HOME)/.config/i3status ] && \
	[ $(shell readlink -f $(HOME)/.config/i3status) = $(shell pwd)/config/i3status ] && \
	rm $(HOME)/.config/i3status
	[ -L $(HOME)/.config/rofi ] && \
	[ $(shell readlink -f $(HOME)/.config/rofi) = $(shell pwd)/config/rofi ] && \
	rm $(HOME)/.config/rofi
	[ -L $(HOME)/.config/zathura ] && \
	[ $(shell readlink -f $(HOME)/.config/zathura) = $(shell pwd)/config/zathura ] && \
	rm $(HOME)/.config/zathura
	[ -L $(HOME)/.config/nvim ] && \
	[ $(shell readlink -f $(HOME)/.config/nvim) = $(shell pwd)/config/nvim ] && \
	rm $(HOME)/.config/nvim
	[ -L $(HOME)/.zshrc ] && \
	[ $(shell readlink -f $(HOME)/.zshrc) = $(shell pwd)/config/zshrc ] && \
	rm $(HOME)/.zshrc
	[ -L $(HOME)/.Xresources ] && \
	[ $(shell readlink -f $(HOME)/.Xresources) = $(shell pwd)/config/Xresources ] && \
	rm $(HOME)/.Xresources
	[ -L $(HOME)/.bashrc ] && \
	[ $(shell readlink -f $(HOME)/.bashrc) = $(shell pwd)/config/bashrc ] && \
	rm $(HOME)/.bashrc
	[ -L $(HOME)/.script ] && \
	[ $(shell readlink -f $(HOME)/.script) = $(shell pwd)/config/script ] && \
	rm -r $(HOME)/.script

