import os

dir = os.popen('pwd').read()

# Installing Zsh
os.system('sudo apt update; sudo apt install zsh -y')
os.system('chsh -s $(which zsh)')

# Installing Oh-my-zsh
os.system('sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"')

# Installing spaceship-prompt
os.system('git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/themes/spaceship-prompt')
os.system('ln -s ~/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/themes/spaceship.zsh-theme')

# Setting up symlinks to config folder
os.system('find . -maxdepth 1 -type f -name ".z*" -exec rm {} \;')
os.system('ln -s ' + dir + '/zsh/common/* ~/')
