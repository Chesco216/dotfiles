
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

elif command -v pacman &> /dev/null; then
  
  # kitty
  if command -v kitty &> /dev/null; then
    sudo pacman -S kitty --no-confirm
  else
    echo "kitty already installed"
  fi

  # polybar
  if command -v polybar &> /dev/null; then
    sudo pacman -S polybar --no-confirm
  else
    echo "polybar already installed"
  fi

  # picom 
  if command -v picom &> /dev/null; then
    sudo pacman -S picom --no-confirm
  else
    echo "picom already installed"
  fi

  # awesome
  if command -v awesome &> /dev/null; then
    sudo pacman -S awesome --no-confirm
  else
    echo "awesome already installed"
  fi

  # neofetch
  if command -v neofetch &> /dev/null; then
    sudo pacman -S neofetch --no-confirm
  else
    echo "neofetch already installed"
  fi

fi

# Creating a copy of awesome config file
sudo cp -f /etc/xdg/awesome/rc.lua /etc/xdg/awesome/copy-rc.lua

# Replacing the rc.lua file
sudo cp -f $HOME/dotfiles/awesome/rc.lua /etc/xdg/awesome/rc.lua

# Replacing polybar config file 
sudo cp -rf $HOME/dotfiles/polybar/ /etc/polybar/

# Replacing kitty config file
cp -rf $HOME/dotfiles/kitty/kitty.conf $HOME/.config/kitty/kitty.conf

# Replacing picom config file
cp -rf $HOME/dotfiles/picom/picom.conf $HOME/.config/picom/picom.conf

# Replacing neofetch config file
cp -rf $HOME/.dotfiles/neofetch/ $HOME/,config/neofetch/



echo "Now press windows+ctrl+r or  command+ctrl+r to see changes or restart your display manager Ex: sudo systemctl restart sddm"
