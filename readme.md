# INFORMATION

```zsh
                        ▓▓▓▓▓ ▓▓▓▓▓        ▓▓▓▓▓ ▓▓▓▓▓
                        ▓▓ ▓▓ ▓▓ ▓▓   ▓▓   ▓▓ ▓▓ ▓▓ ▓▓
                        ▓▓ ▓▓ ▓▓ ▓▓        ▓▓ ▓▓ ▓▓ ▓▓
                        ▓▓ ▓▓ ▓▓ ▓▓   ▓▓   ▓▓ ▓▓ ▓▓ ▓▓
                        ▓▓▓▓▓ ▓▓▓▓▓        ▓▓▓▓▓ ▓▓▓▓▓
```
\* This ascii is not really representative in github but a copy/paste in your term should give you an idea. 
Rendering is like below in a modern term:
<p style="margin-left:30px;">
<img src="the_clock.png" alt="the_clock_screenshot">
</p>
<br>
tty-clock sucks.<br>
Used in hyprland, it came with a big lag, the time for the window to finish its move + another couple of ms. yay -R then...<br>
I tried a couple more to say the least. All were borring. Bloated. Ugly... depends.<br>
<br>

```zsh

                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⢀⣾⠟⠛⢉⣁⣀⠉⠉⢛⣿⣿⡛⠉⠁⣀⣉⡉⠛⢿⣷⡀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⣾⣿⣷⣾⠟⠋⣡⣴⣾⣿⣿⣿⣿⣷⣦⣈⠙⠻⣷⣾⣿⣷⠀⠀⠀⠀
                       ⠀⠀⠀⢀⣿⣿⣿⣿⣶⣿⣿⣿⡿⠿⠿⠿⢿⣿⣿⣿⣿⣾⣿⣿⣿⣿⡄⠀⠀⠀
                       ⠀⠀⠀⢸⣿⣿⣿⡿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⡇⠀⠀⠀
                       ⠀⠀⠀⠘⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⠃⠀⠀⠀
                       ⠀⠀⠀⠀⢿⡇⠀⠀⢀⣠⣤⣶⣶⣶⣶⣶⣶⣶⣶⣦⣄⡀⠀⠀⢸⡿⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠈⢿⣦⣄⣈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢉⣁⣤⣴⡿⠁⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠀⠀⠻⣿⣿⣷⡄⢹⣿⣿⣿⣿⣿⣿⡏⢰⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⡇⢸⣿⣿⣿⣿⣿⣿⡇⢸⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠛⠛⠛⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
```

The clock included in ly-dm is just great.<br>
It use termbox2 instead of ncurses. Modern, lighter...<br>
Thanks to open-source, the clock could just be dumped from the entire greeter code and simplified to its simple expected usage. With a refactored main, indeed.<br>
So here it is.<br>
Thanks to the person who developed it in the first place.<br>

## Original Code
https://github.com/fairyglade/ly => https://codeberg.org/AnErrupTion/ly

## License
Do whatever<br>
```zsh
⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⠶⠒⠒⠲⢤⡤⠚⠓⠒⠢⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣠⣶⣿⣿⠃⠀⢀⣐⣤⡀⠙⠢⣄⡀⠀⠀⠉⠛⠦⡀⠀⠀⠀⠀⠀
⢀⡴⢛⡋⠛⢻⣿⣿⡟⠀⢰⣯⠀⠀⠈⠓⢤⣀⠉⠓⠶⠤⣤⡄⠬⠦⣤⡀⠀⠀
⣸⠁⢋⣿⡀⠈⣿⣿⡇⠀⢸⡉⠓⠦⣤⣀⣀⡏⠀⠀⢰⡶⠤⠶⠚⢻⡂⣻⠀⠀
⢿⠀⠈⢈⣧⠴⠛⠋⠁⠈⠉⠉⠉⠓⠲⠾⣫⣄⣀⣀⡿⣧⣀⠀⠀⠀⣿⣋⠀⠀
⠸⢦⡔⠋⠀⠀⠀⣀⣤⣤⠤⢄⣀⡀⠀⠈⠇⠳⣄⠀⣹⡦⣬⣉⣓⣶⠏⣉⠛⣦
⠀⣸⠕⠀⣠⡖⠉⠀⢀⠟⣆⠀⠀⠈⠑⢦⡀⠀⠸⠏⠁⠉⠋⠀⠉⠛⢮⡙⠁⢸
⣰⠋⣠⢾⠋⡇⠀⠀⣸⠀⠸⡄⠀⠀⠀⡾⣏⠒⠒⢲⡖⠒⠒⢢⣄⠀⠀⢹⡀⣼
⣿⠀⡇⣿⠀⢳⠀⢀⡇⠀⠀⢳⠀⢀⡜⠁⢸⠀⢀⡟⢣⠀⠀⡼⡏⢣⠀⢀⡟⠁
⢿⡀⠳⢿⣀⣈⣧⣞⣀⣀⣀⣘⣶⣋⡀⠀⢸⣤⠏⠀⢸⠀⡼⠁⢸⠀⢇⢸⡇⠀
⠈⠻⠦⣤⣤⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠓⠒⠤⢼⡎⠀⠀⢸⢀⣾⠀⡇⠀
⠀⠀⠀⠀⠘⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈⡑⠦⣿⣉⡞⢀⡇⠀
⠀⠀⠀⠀⠀⠈⠻⢦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣉⡷⠦⠤⠴⠟⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⠒⠶⠶⢤⣤⣤⡤⠶⠚⠁⠀⠀⠀⠀⠀⠀⠀
```
## Maintainance
I do not intend to change anything at the moment and would do it only if I need something else. I have very little time for the clock.<br>
Maybe I'll add some little seconds on its right using some nerd font.

## Compile
```zig
   .----.
   |Z>_ |
 __|____|__
|  ______--|
`-/.::::.\-'
 `--------'
```
Simply use build.sh bash script.<br>
Maybe read its content before executing anything stupid.

## Requirements
* termbox2 - library available within the sources and proposed to be embedded within the clock binary during compilation.
* libc - normally installed on Linux by default
* zig - indeed since it is dev using it.
<br>

<u>It came with the following for me:</u>

╰─ sudo pacman -S zig<br>
resolving dependencies...<br>
looking for conflicting packages...<br>
<br>
Packages (5) clang18-18.1.8-2  compiler-rt18-18.1.8-1  lld18-18.1.6-2  llvm18-libs-18.1.8-2
             zig-0.13.0-2
