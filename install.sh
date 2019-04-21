# Check what package manager is being used
if hash apt &> /dev/null; then pk="apt"; fi
if hash brew &> /dev/null; then pk="brew"; fi

# The script will exit on error
set -e

# Make sure system is updated
if [ "$pk" == "apt" ] 
then
    sudo "$pk" update && sudo "$pk" upgrade -y
elif [ "$pk" == "brew" ]
then
    "$pk" update && "$pk" upgrade
fi

# Install zsh
if [ "$pk" == "apt" ]
then
    sudo "$pk" install zsh -y
elif [ "$pk" == "brew" ]
then
    "$pk" install zsh
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/KSiig/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

git clone https://github.com/KSiig/configs ~/configs
find ~/ -maxdepth 1 -type f -name ".z*" -exec rm {} \;
find ~/ -maxdepth 1 -type f -name ".bash_alias*" -exec rm {} \;
ln -s ~/configs/zsh/common/.* ~/
touch ~/.zcustom
