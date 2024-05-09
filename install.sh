
# Installing  apps
if command -v apt &> /dev/null; then
  #kitty
  if command -v kitty &> /dev/null; then
    sudo apt install -y kitty
  else
    echo "kitty already installed"
  fi

  # polybar
  if command -v polybar &> /dev/null; then
    sudo apt install -y polybar
  else
    echo "polybar already installed"
  fi

  # picom
  if command -v picom &> /dev/null; then
    sudo apt install -y picom
  else
    echo "picom already installed"
  fi
  
  # awesome
  if command -v awesome &> /dev/null; then
    sudo apt install -y awesome
  else
    echo "awesome already installed"
  fi

  # neofetch
  if command -v neofetch &> /dev/null; then
    sudo apt install -y neofetch
  else
    echo "neofetch already installed"
  fi

  # ncspot
  if command -v ncspot &> /dev/null; then
    sudo apt install -y ncspot
  else
    echo "ncspot already installed"
  fi

  # feh
  if command -v feh &> /dev/null; then
    sudo apt install -y feh
  else
    echo "feh already installed"
  fi
  
  # APPS I frequently use
  # Chromium
  if command -v chromium &> /dev/null; then
    sudo apt install -y chromium
    echo "Chromium "
  else
    echo "Chromium "
  fi
  
  # Discord
  if command -v discord &> /dev/null; then
    sudo apt install -y discord
    echo "Discord "
  else
    echo "Discord "
  fi
  
  # Obsidian
  if command -v obsidian &> /dev/null; then
    sudo apt install -y discord
    echo "Obsidian "
  else
    echo "Obsidian "
  fi

elif command -v pacman &> /dev/null; then
  
  # kitty
  if command -v kitty &> /dev/null; then
    sudo pacman -S kitty --noconfirm
  else
    echo "kitty already installed"
  fi

  # polybar
  if command -v polybar &> /dev/null; then
    sudo pacman -S polybar --noconfirm
  else
    echo "polybar already installed"
  fi

  # picom 
  if command -v picom &> /dev/null; then
    sudo pacman -S picom --noconfirm
  else
    echo "picom already installed"
  fi

  # awesome
  if command -v awesome &> /dev/null; then
    sudo pacman -S awesome --noconfirm
  else
    echo "awesome already installed"
  fi

  # neofetch
  if command -v neofetch &> /dev/null; then
    sudo pacman -S neofetch --noconfirm
  else
    echo "neofetch already installed"
  fi

  # ncspot
  if command -v ncspot &> /dev/null; then
    sudo pacman -S ncspot --noconfirm
  else
    echo "ncspot already installed"
  fi
  
  # feh
  if command -v feh &> /dev/null; then
    sudo pacman -S feh --noconfirm
  else
    echo "feh already installed"
  fi
  
  # APPS I frequently use
  # Chromium
  if command -v chromium &> /dev/null; then
    sudo pacman -S chromium --noconfirm
    echo "Chromium "
  else
    echo "Chromium "
  fi
  
  # Discord
  if command -v discord &> /dev/null; then
    sudo pacman -S discord --noconfirm
    echo "Discord "
  else
    echo "Discord "
  fi
  
  # Obsidian
  if command -v obsidian &> /dev/null; then
    sudo pacman -S discord -noconfirm
    echo "Obsidian "
  else
    echo "Obsidian "
  fi
  
fi

# Fonts directory
fontsdir="$HOME/.local/share/fonts/"

if [ -d "$fontsdir" ]; then
    echo "fonts dir already exists"
else
    mkdir $HOME/.local/share/fonts/
    echo "fonts dir created $HOME/.local/share/fonts/"
fi

# kitty directory
kittydir="$HOME/.config/kitty/"

if [ -d "$kittydir" ]; then
    echo "kittydir dir already exists"
else
    mkdir $HOME/.config/kitty/
    echo "kitty dir created $HOME/.config/kitty"
fi

# picom directory
picomdir="$HOME/.local/share/fonts/"

if [ -d "$picomdir" ]; then
    echo "picom dir already exists"
else
    mkdir $HOME/.config/picom/
    echo "picom dir created $HOME/.config/picom"
fi

# Scripts directory
scriptsdir="$HOME/Scripts/"

if [ -d "$scriptsdir" ]; then
    echo "Scripts dir already exists"
else
    mkdir $HOME/Scripts/
    echo "Scripts dir created $HOME/Scripts"
fi


# Nerd Fonts - Fira Code
cp -r $HOME/dotfiles/FiraCodeNF $HOME/.local/share/fonts/

# Replacing the rc.lua file
sudo rm /etc/xdg/awesome/rc.lua
sudo cp -rf $HOME/dotfiles/awesome/rc.lua /etc/xdg/awesome/

# Replacing polybar config file 
sudo rm /etc/polybar/config.ini
sudo cp -rf $HOME/dotfiles/polybar/config.ini /etc/polybar/
sudo cp -rf $HOME/dotfiles/polybar/launch.sh /etc/polybar/

# Replacing kitty config file
rm $HOME/.config/kitty/kitty.conf
cp -rf $HOME/dotfiles/kitty/kitty.conf $HOME/.config/kitty/

# Replacing picom config file
cp -rf $HOME/dotfiles/picom/picom.conf $HOME/.config/picom/

# Replacing neofetch config file
rm $HOME/.config/neofetch/config.conf
cp -rf $HOME/dotfiles/neofetch/config.conf $HOME/.config/neofetch/

# Replacing ncspot config file
rm $HOME/.config/ncspot/config.toml
cp -rf $HOME/dotfiles/ncspot/config.toml $HOME/.config/ncspot/

# Copying wallpapers Scripts
cp -rf $HOME/dotfiles/set-ran-wall.py $HOME/Scripts/

echo "Now press windows+ctrl+r or  command+ctrl+r to see changes or restart your display manager Ex: sudo systemctl restart sddm"
