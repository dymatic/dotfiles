all: i3 emacs xmobar bashrc xresources

.PHONY: i3
i3:
	rm ~/.i3/config
	cp ./i3/config ~/.i3/
	rm /etc/i3status.conf
	cp ./i3/i3status.conf  /etc/

.PHONY: emacs
emacs: 
	rm ~/.emacs
	cp ./emacs/.emacs ~/

.PHONY: xmobar
xmobar:
	rm ~/.xmobarrc
	cp ./xmobar/.xmobarrc ~/

.PHONY: bashrc
bashrc:
	rm ~/.bashrc
	cp ./bashrc/.bashrc ~/

.PHONY: xresources
xresources:
	rm ~/.Xresources
	cp ./Xresources/.Xresources ~/
