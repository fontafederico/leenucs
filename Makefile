update: 
	sudo apt-get update

upgrade: update
	sudo apt-get upgrade

#Controllare i flag di curl e fc-cache
jetbrains: curl
	curl -LOk https://download.jetbrains.com/fonts/JetBrainsMono-1.0.3.zip
	unzip JetBrainsMono-1.0.3.zip -d ~/.fonts
	rm ~/JetBrainsMono-1.0.3.zip
	fc-cache -fv	

curl:
	sudo apt install curl

vim:	
	sudo apt install -y vim

#Quali sono le differenze con vim? Togliere comando vim se nvim è meglio
neovim:
	sudo apt install -y neovim

grub_customizer: 
	sudo apt install -y grub-customizer

sshkey:
	ssh-keygen

#funziona su popos? forse? controllare
vscode:
	sudo apt install code

zsh:
	sudo apt install -y zsh
	
ohmyzsh: zsh
	sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#NON FUNZIONA!!!!!
set_default_zsh: zsh
#	chsh -s $(which zsh)
	chsh -s ~/usr/bin/zsh

tweaks:
	sudo apt install -y gnome-tweaks

telegram:
	sudo apt install -y telegram-desktop

#Controllare i flag, controllare tee e i suoi flag, controllare se i flag di wget sono utili o meno 
insomnia:
	echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
	wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -
	sudo apt update
	sudo apt install -y insomnia

git:
	sudo apt install -y git

#Controllare altri flag possibili da settare e settarli
git_config: git
	git config --global user.email "federico.fontana2000@gmail.com"
	git config --global user.name "Federico Fontana"

#Come si fa? Plz omg fix your distro omg omg omg what does systemdboot whant from me
setbootdefault:

tree:
	sudo apt install -y tree 

boxes:
	sudo apt install -y gnome-boxes
	
msteams:
	wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
	sudo apt install ~/teams_1.3.00.5153_amd64.deb
	rm ~/teams_1.3.00.5153_amd64.deb
	
discord:
	wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
	sudo apt install -y ./discord.deb
	rm ./discord.deb

#controllare comando e controllare flag di curl
docker:
	curl -fsSL https://get.docker.com -o get-docker.sh

vlc:
	sudo apt install -y vlc
	
neofetch: 
	sudo apt install -y neofetch

templates: 
	touch ~/Templates/plain_text.txt

ranger: 
	sudo apt-get install -y ranger

colorls:

imagemagick: 
	sudo apt-get install -y imagemagick

htop:
	sudo apt-get install -y htop
	
folder_setup: 
	mkdir ~/repo
	mkdir ~/uni
	
node: 
	sudo apt install -y nodejs

java:
	sudo apt install -y default-jdk

pip3: 
	sudo apt install -y python3-pip

#! controllare il path
dart: git
	sudo apt update
	sudo apt install apt-transport-https
	sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
	sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
	sudo apt update
	sudo apt install dart

#! controllare se è già in path!
flutter: git dart
	git clone -v --progress https://github.com/flutter/flutter.git ~/.flutter


# non testata
#! aggiungere a path/controllare se c'è già
android: java
	sudo apt-add-repository ppa:paolorotolo/android-studio
	sudo apt update
	sudo apt install android-studio
	/opt/android-studio/bin/studio.sh

#!WARNING: The script virtualenv is installed in '/home/fede/.local/bin' which is not on PATH.
#!Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
pyvenv: pip3
	pip3 install virtualenv

eclipse:

bat:
	sudo apt install bat -y

#così non lo installi, ci vorrebbe un comando per scaricarlo e installarlo
input_font:
	cp -r ./input_font ~/.fonts/Input
	fc-cache -fv

#controllare perche non funzionano
ln_zshrc:
	ln -s ./config/.zshrc ~/.zshrc

ln_bashrc:
	ln -s ./config/.bashrc ~/.bashrc

ln_vimrc:
	ln -s ./config/.vimrc ~/.vimrc

# ln -s $HOME/repo/leenucs/config/.bashrc $HOME/.bashrc funziona
symlinks: ln_zshrc ln_bashrc ln_vimrc

#prendere .vimrc da hdd

#potrebbe aver senso fare un (pwd > qualcosa) per avere cartella corrente e rendere generici i comandi?
