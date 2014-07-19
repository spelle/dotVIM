dotVIM
======

I. Clone the repo
-----------------

	git clone https://github.com/spelle/dotVIM .vim
	cd .vim
	git submodule init
	git submodule update
	cd ..

II . .vimrc
-----------

	ln -s .vim/vimrc .vimrc

III. Install vundle bundles
--------------------------

	vim
	:BundleInstall

YouCompleteMe should fail with message :

	ycm_client_support.[so|pyd|dll] and ycm_core.[so|pyd|dll] not detected; you need to compile YCM before using it. Read the docs!
	Press ENTER or type command to continue

It have to be build. Let's see this later

IV. Powerline for the Airline bundle
------------------------------------

	mkdir .fonts
	cd .fonts                                                                                   :(
	ln -s ../.vim/powerline/font/PowerlineSymbols.otf 
	cd ..

	mkdir .fonts.conf.d
	cd .fonts.conf.d 
	ln -s ../.vim/powerline/font/10-powerline-symbols.conf 
	cd ..

	fc-cache -vf ~/.fonts

V. YouCompleteMe Bundle compilation
-----------------------------------

	sudo apt install build-essential cmake python-dev libclang-dev

	cd .vim/bundle/YouCompleteMe
	./install.sh --clang-completer

