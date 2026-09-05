#!/bin/bash

echo "This script will update Wolf4Mac's files to enable support for Linux."
echo "Be sure you have SDL2 and SDL2_mixer installed to ensure compilation works."
echo "(Y/n) "
read -r promptspsg
if [[ $promptspsg == "Y" || $promptspsg == "y" || $promptspsg == "" ]]; then
    echo "Updating files..."
    sed -i 's|SDL2_mixer/SDL_mixer.h|SDL_mixer.h|g' ./id_sd.c
    sed -i 's|SDL2_mixer/SDL_mixer.h|SDL_mixer.h|g' ./wl_game.c
    echo "Done!"
else
    echo "Aborting."
fi