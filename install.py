import os

dir = os.popen('pwd').read()

os.system('sudo apt update; sudo apt install zsh -y')
os.system('chsh -s $(which zsh)')
os.system('sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"')
