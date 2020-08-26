default: config

stow:
	brew install stow

sh: config
	stow -R sh

zsh: config sh
	stow -R zsh

config: .stowrc

.stowrc:
	echo "--target=${HOME}" > .stowrc
