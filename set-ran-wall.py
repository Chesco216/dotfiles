# This script is for changhe randomly a wallpaper every time you reload awesome
# If you have problems with this try canging the wallpapers path

import os
import random

feh = 'feh --bg-fill '
path = '"$HOME/dotfiles/wallpapers/bg'
number = random.randint(2, 14)

setbg = feh + path + str(number) + '.jpg"'

os.system( setbg )
