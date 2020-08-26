default: config

meslo:
	brew tap homebrew/cask-fonts
	brew cask install font-meslo-lg-nerd-font

curl:
	brew install curl
ohmyzsh:
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

antigen:
	curl -L git.io/antigen > ~/.antigen.zsh	
stow:
	brew install stow

install: stow curl ohmyzsh antigen

sh: config
	stow -R sh

zsh: config sh
	stow -R zsh

config: .stowrc

.stowrc:
	echo "--target=${HOME}" > .stowrc
