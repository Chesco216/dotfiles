echo "loading ..."

cp -rf ~/.config/kitty/ ~/.dotfiles/
echo "kitty "

cp -rf ~/.config/picom/ ~/.dotfiles/
echo "picom "

cp -rf ~/.config/neofetch/ ~/.dotfiles/
echo "neofetch "

cp -rf ~/.config/starship/ ~/.dotfiles/
echo "starship "

cp -rf /etc/xdg/awesome/ ~/.dotfiles/
echo "awesome "

cp -rf /etc/polybar/ ~/.dotfiles/
echo "polybar "

cp -rf ~/.bashrc ~/.dotfiles/
echo "bash "

echo "adding changes to commit..."
git add .
echo ""

read -p "Enter name for the commit: " commit_name
echo "creating commit..."
git commit -m "$commit_name"
echo ""

echo "pushing changes..."
git push

echo "dotfiles had been updated"
