#  _           _        _ _       _     
# (_)_ __  ___| |_ __ _| | |  ___| |__  
# | | '_ \/ __| __/ _` | | | / __| '_ \ 
# | | | | \__ \ || (_| | | |_\__ \ | | |
# |_|_| |_|___/\__\__,_|_|_(_)___/_| |_|

cd

mv ~/Code/dotfiles/wallpapers ~/Pictures/wallpapers

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo add-apt-repository universe && sudo apt update -y && sudo pkcon -y update
sudo apt install -y zsh bashtop xclip neofetch figlet git nodejs npm fonts-firacode default-jre default-jdk chromium-browser openvpn openvpn-systemd-resolved spotify-client
sudo snap install -y bitwarden remmina discord
sudo snap install -y --classic code
sudo snap install -y slack --classic

yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fsSL https://starship.rs/install.sh | bash 
mv ~/Code/dotfiles/starship.toml ~/.config/starship.toml
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm -f ~/.zshrc ~/.zshrc.pre-oh-my-zsh
mv ~/Code/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
chsh -s $(which zsh)
git config --global user.name "Navinn Ravindaran"
git config --global user.email "59669957+navn-r@users.noreply.github.com"
ssh-keygen -t ed25519 -C "59669957+navn-r@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
xclip -selection clipboard < ~/.ssh/id_ed25519.pub && echo "GITHUB SSH COPIED TO CLIPBOARD"

sudo mv ~/Code/dotfiles/tsvpn.ovpn /etc/openvpn/client/tsvpn.conf
mv ~/Code/dotfiles/vpn.sh ~/vpn.sh

sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R
curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh

git clone https://github.com/morpheusthewhite/spicetify-themes.git ~/Code/spicetify-themes
mv ~/Code/spicetify-themes/DribbblishDynamic ~/.config/spicetify/Themes/DribbblishDynamic && cd ~/.config/spicetify/Themes/DribbblishDynamic
cp dribbblish-dynamic.js ../../Extensions
spicetify config extensions dribbblish-dynamic.js
spicetify config current_theme DribbblishDynamic color_scheme dark
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply && rm -rf ~/Code/spicetify-themes

rm -rf ~/Code/dotfiles
figlet "done."
