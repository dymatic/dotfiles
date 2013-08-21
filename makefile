all: i3 emacs xmobar

.PHONY: i3
i3:
	if [ -a ~/.i3/config]; then rm ~/.i3/config; fi;
	cp ./i3/config ~/.i3/
	if [ -a /etc/i3status.conf]; then rm /etc/i3status.conf; fi;
	cp ./i3/i3status.conf  /etc/

.PHONY: emacs
emacs: 
	if [ -a ~/.emacs]; then rm ~/.emacs; fi;
	cp ./emacs/.emacs ~/

.PHONY: xmobar
xmobar:
	if [ -a ~/.xmobarrc]; then rm ~/.xmobarrc; fi;
	cp ./xmobar/.xmobarrc ~/

.PHONY: bashrc
bashrc:
	if [ -a ~/.bashrc]; then rm ~/.bashrc; fi;
	cp ./bashrc/.bashrc ~/

.PHONY: xresources
xresources:
	if [ -a ~/.Xresources]; then rm ~/.Xresources; fi;
	cp ./Xresources/.Xresources ~/
