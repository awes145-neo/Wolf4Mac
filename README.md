# Wolf4SDL
A general-purpose fork of Wolf4SDL that fixes various bugs found while compiling on Linux or macOS platforms.

Tested on:
- macOS 26.6.2, MacBook Air (M5, 2025)
- macOS 12.7.6, Mac mini (i5, 2014)

# Why can't I just use Presto's fork for compilation already?
Long story short: it's broken. Files aren't placed where they're supposed to be and, all in all, it's just a big, giant, heaping mess.

# Prerequisites
This version of Wolf4SDL is based off of KS-Presto's Wolf4SDL2 fork. As such you will need to install various SDL2 libraries, namely SDL2 and SDL2_mixer.

## macOS
Your Mac will need to run macOS 11.5 to compile successfully.

For macOS, grab [SDL2 v2.32.8](https://github.com/libsdl-org/SDL/releases/tag/release-2.32.8) and [SDL2_mixer v2.8.2](https://github.com/libsdl-org/SDL_mixer/releases/tag/release-2.8.2). Each release should have a downloadable DMG file to mount.

To install them, you can drag and drop each of the *.framework folders into /Library/Frameworks.

**NOTE: if you are a user of the Mac without administrator privileges, you can copy the frameworks to /User/(name)/Library/Frameworks**

Those should be all of the prerequisites you need. If Xcode throws any errors, you can try redefining the names of the frameworks in the Project Navigator.

# Compiling
To compile this version of Wolf4SDL, grab [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12) from the macOS App Store. Open Xcode and click "Clone Git Repository...". In the top "Enter repository URL..." box, type in:
```
https://github.com/Awesome-neos145/Wolf4SDL-macOS.git
```
Save it to your User directory or wherever it suits you best.

Then in Xcode, click "Open Existing Project". Head over to:
```
/pathto/Wolf4SDL-macOS/macosx
```
This is where all the necessary files for compiling the project should be.

To compile the project, you can press either the Play icon (next to the window buttons) or press ⌘B. To get to the folder where Wolf4SDL has been built: `Menu Bar -> Product -> Show Build Folder in Finder`. The app bundle will be in `Products -> Debug -> Wolf4SDL.app`.

# Playing the Game
Place the .app in the same folder where your game files are (e.g., WL6). It will not work if all of the files are uppercase, so you will need to rename them all to have a lowercase standard.

After all that, double click the app bundle to start playing!

Load up your Luger, kill some Nazis, and Escape Wolfenstein!

# Controls
Controls for the macOS version are as follows:
| Key | Action |
| :--- | :--- |
| Arrows | Move |
| ^ (control) | Shoot |
| ⌥ (option) | Strafe |
| Space | Open Doors/Push Wall |
| Shift | Run |

It is recommended to disable the ^← and ^→ shortcut keys to prevent you from accidentally switching between desktops (or in the case of macOS versions with Game Mode, preventing you from turning and shooting). To do this, go to System Preferences -> Keyboard -> Keyboard Shortcuts -> Mission Control and uncheck the "Mission Control" box.

# Starting with Arguments
Open up a terminal window in the directory where Wolf4SDL is stored, and run:
```
open -a "Wolf4SDL.app" --args (args here)
```
To enable debug mode, add --goobers. Then, while in-game, press ⌥⇧⌫. (Option-Shift-Delete).
# Credits
KS-Presto for his original Wolf4SDL2 fork.

SDL
