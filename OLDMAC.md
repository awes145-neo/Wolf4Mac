# Compiling on older macOS
## macOS Mojave (10.14)
From the start, trying to load up the project in Xcode 11.3.1 will straight-up not work. However, there is a trick that can be done to bypass this.

Head over to where the Wolf4Mac repository was cloned:
`Wolf4Mac -> macosx`

You will see a file called "Wolf4SDL.xcodeproj". Right-click it and click "Show Package Contents". You will then be brought into the file, where you will see another file named "project.pbxproj".

Open the "project.pbxproj" file in Xcode (or another tex editing utility). You will see this block of code:
```
// !$*UTF8*$!
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 54;
	objects =
...
```

The `objectVersion = 54;` line dictates which versions of Xcode can open the file. 54 being more recent versions of Xcode, as of 9/24/26, Xcode on macOS Monterey (10.12) will be able to open the project.

Change the objectVersion property to `46` instead. This will allow the project to open up smoothly in Xcode. However, the game still cannot be compiled yet.

You must change the deployment target from 14.6 (the latest version that Xcode 27 supports) to something that Mojave will support. You can just set the target to 10.14, or you can go lower if need be.

The game should be ready to compile now.

## OS X 10.9 and below
Earlier versions of Mac OS X require older SDL2 versions, being [SDL2 v2.0.22](https://github.com/libsdl-org/SDL/releases/tag/release-2.0.22) and [SDL2_mixer v2.6.0](https://github.com/libsdl-org/SDL_mixer/releases/tag/release-2.6.0).

Follow the steps for getting the project open on older Xcode versions above (the steps involving changing the objectVersion).

On 10.7 you may need to change more settings. First step is changing the scheme from a 32-bit compilation to a 64-bit compilation, as SDL2 only supports 64 bit targets. You can do this by changing the "Architecture" bit (click "All" in the Build Settings) to the 64-bit architecture.

Also change the compilation target to, at minimum, 10.6.