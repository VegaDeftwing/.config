	currentws=$(i3-msg -t get_workspaces \
	| jq '.[] | select(.focused==true).name' \
	| cut -d"\"" -f2 | cut -d":" -f1)
	if [ $currentws = "1" ]; then
cmd=$(echo "\
false                     #Go to terminal
systemctl poweroff        #Shutdown
windows                   #Reboot to Windows
systemctl reboot          #Reboot to Linux
htop                      #
vmstat                    #
/bin/lsof                 #See processess file handles
sudo nethogs              #monitor network usage per proc
sudo radeontop            #monitor GPU Usage
systemctl list-unit-files #
systemctl list-timers     #
journalctl                #
dmesg                     #
sudo systemctl stop firewalld.service
sudo systemctl start firewalld.service
" | fzf) 
    zsh -c $cmd
    hr
	elif [ $currentws = "2" ]; then	
		cd ~/git/local
cmd=$(echo "\
false                                                                                               #Go to terminal
deepin-terminal -w ~/git/ext/gdb-frontend/ -e ./gdbfrontend                                         #Start GDB-Frontend in new terminal
find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git status -s && echo)' \; #See Current Changes in Local Repos
Cutter                                                                                              #Open Reverse Enginering Tool
htop                                                                                                #Process Managment
/opt/altera/19.1/quartus/bin/quartus                                                                #Open Quartus IDE
" | fzf) 
    zsh -c $cmd
    hr
  echo "⎧\033[1mValgrind\033[0m to check program for leaks and other errors"
  echo "⎪\033[1mStrace\033[0m runs the specified command until it exits.  It intercepts and records the system calls"
  echo "⎪\twhich are called by a process and the signals which are re‐ceived by a process"
  echo "⎥\033[1mCode .\033[0m to open current working directory in VSCode"
  echo "⎥\033[1mHexyl\033[0m to open hex viewer"
  echo "⎩\033[1mclang-tidy --fix/--fix-errors033[0m to find some problems"
    hr
  elif [ $currentws = "3" ]; then	
		echo "on ws 3"
  elif [ $currentws = "4" ]; then
  cmd=$(echo "\
false                                                         #Go to terminal
QT_AUTO_SCREEN_SCALE_FACTOR=0 krita                           #Krita w/ GUI scaling
gimp                                                          #Gimp
steam steam://rungameid/428340                                #Hexels
steam steam://rungameid/948220                                #Colortool
steam steam://rungameid/940920                                #BlastFX
vivaldi-stable ~/git/ext/Dotgrid/desktop/sources/index.html   #Dotgrid
vivaldi-stable ~/git/ext/Ronin/index.html                     #Ronin
vivaldi-stable https://nimp.app                               #Nimp
vivaldi-stable ~/git/ext/Noodle/index.html#100x100            #Noodle, 100x100
magicavoxel                                                   #Magicavoxel
blender                                                       #Blender
inkscape                                                      #Inkscape
/mnt/data/FloatingProgs/Pixatool/linux64/pixatool  #Pixatool
/mnt/data/FloatingProgs/Fractorium-1.0.0.18-.x86_64/usr/bin/Fractorium-x86_64.AppImage #Fractorium
" | fzf) 
    zsh -c $cmd
  echo "⎧\033[1mWaifu2x-converter-cpp\033[0m to scale art"
  echo "⎪"
  echo "⎪"
  echo "⎥"
  echo "⎩"
  elif [ $currentws = "5" ]; then	
  cmd=$(echo "\
false                                                                       #Go to terminal
steam-native                                                                #Launch Steam
steam steam://rungameid/632360                                              #ROR2
itch                                                                        #Itch.io
minecraft-launcher                                                          #Minecraft
~/Documents/FloatingApps/BeatHazardUltra/BeatHazard.exe                     #Beat Hazzard Ultra
~/Documents/FloatingApps/Intake_Win_1382564523/intake.sh                    #Intake
~/Documents/FloatingApps/VectagonLinux/Linux.x86                            #Vectagon
java -jar /home/vega/.config/itch/apps/pixel-dungeon/desktop-1.7.2a-1.jar   #Pixel Dungeon
" | fzf) 
    zsh -c $cmd
  elif [ $currentws = "6" ]; then	
		cd ~/git/local/openg2
    git status
    hr
  elif [ $currentws = "7" ]; then	
	ncmpcpp
    hr
  elif [ $currentws = "8" ]; then	
  cmd=$(echo "\
false                                                         #Go to terminal
hexchat                                                       #Hexchat
discord                                                       #Discord
whalebird                                                     #Mastadon
firefox https://www.facebook.com/
firefox https://twitter.com
" | fzf) 
    hr
    cd Telegram\ Desktop
  elif [ $currentws = "9" ]; then	
		curl -s "wttr.in/$1?m1"
	fi
}