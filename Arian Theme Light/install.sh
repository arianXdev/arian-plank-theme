#!/bin/bash

read -p "Do you want to install Arian theme (Light version) for Plank?" answer

PLANK_DIR="$HOME/.local/share/plank/themes"

case "$answer" in
    [yY][eE][sS]|[yY]|"")

    echo "Installing... Please wait!"

    if [ -d $PLANK_DIR ]; then
		cp -Ri . $PLANK_DIR/"Arian Theme Light"
		echo "Done!"
            read -p "Arian theme (Light) for Plank has been installed successfully! Do you want to open Plank preferences?" answer

            case "$answer" in
                [yY][eE][sS]|[yY]|"")
                plank --preferences

                echo "Finish! Enjoy it :)"
                ;;
            *)
            esac
	else
		echo "Couldn't find $PLANK_DIR"
		echo "Please Make sure Plank Dock is installed properly"
		echo "For Arch-based distros: Try 'sudo pacman -S plank'"
		echo "In Debian-based distros: Try 'sudo apt install plank'"
		exit 1
	fi

    ;;
*)
esac
