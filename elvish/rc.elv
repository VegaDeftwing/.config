eval (starship init elvish)

fn ls {|@a| e:lsd -la $@a}
fn lss {|@a| e:exa --group-directories-first -la --git --extended $@a}
fn ping {|@a| e:prettyping $@a}
fn cat {|@a| bat $@a}
fn a { e:alsamixer }
fn h { e:htop}
fn n { e:ncmpcpp }
fn ipconfig { e:ifconfig }
fn gpp { e:g++ }

fn cbpicker { git branch | fzf | sed 's/\* //g' | sed "s/^[ \t]*//" }
fn cb { git checkout (cbpicker) }

starfetch -n lyra
hr -s '_'
e:echo -n "Interface "
e:echo -n $pid
echo " initalized @"  (e:date)
hr -s '_'

fn geti3 { e:i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2 | cut -d":" -f1 }

var currentws = (geti3)

fn printws {
    if (== $currentws 1) {
        echo "⎧sudo pacman -F to id package by binary"
        echo "⎪sudo reflector -c us -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist\033[0m"
        echo "⎪sudo mount -o remount,size=16G,noatime /tmp to expand /tmp"
        echo "⎩journalctl -b -1 to get previous boot information"
	    duf
	    hr -s '_'
    } elif (== $currentws 2) {
        cd ~/git/local
        echo "⎧Valgrind to check program for leaks and other errors"
        echo "⎪Strace runs the specified command until it exits.  It intercepts and records the system calls"
        echo "⎪\twhich are called by a process and the signals which are re‐ceived by a process"
        echo "⎪Code . to open current working directory in VSCode"
        echo "⎪Hexyl to open hex viewer"
        echo "⎪perf record --call-graph dwarf -o perf.data ./myprogram --> Hotspot"
        echo "⎪clang-tidy --fix/--fix-errors to find some problems, similarly 'scan-build -V make/gcc -flags' to run"
        echo "⎪\t a clang based static analyzer"
        echo "⎩\tAlso, be aware of compile flags like --O3, -march -ffast-math, etc."
        hr
    } elif (== $currentws 3) {
	    cd ~/git/local
        echo "⎧Valgrind to check program for leaks and other errors"
        echo "⎪Strace runs the specified command until it exits.  It intercepts and records the system calls"
        echo "⎪\twhich are called by a process and the signals which are re‐ceived by a process"
        echo "⎪Code . to open current working directory in VSCode"
        echo "⎪Hexyl to open hex viewer"
        echo "⎪perf record --call-graph dwarf -o perf.data ./myprogram --> Hotspot"
        echo "⎪clang-tidy --fix/--fix-errors to find some problems, similarly 'scan-build -V make/gcc -flags' to run"
        echo "⎪\t a clang based static analyzer"
        echo "⎩\tAlso, be aware of compile flags like --O3, -march -ffast-math, etc."
        hr
    } elif (== $currentws 4) {
        echo "⎧Waifu2x-converter-cpp to scale art"
        echo "⎪"
        echo "⎪"
        echo "⎪"
        echo "⎩"
        hr
    } elif (== $currentws 5) {
        hr
    } elif (== $currentws 6) {
        cd /mnt/win/VegaProductions/OpGuidesHugoSrc
        git status
        hr
        echo "⎧"
        echo "⎪"
        echo "⎪"
        echo "⎪"
        echo "⎩"
        hr
    } elif (== $currentws 7) {
        ncmpcpp
        hr
    } elif (== $currentws 8) {
        cd 'Telegram Desktop/'
    } elif (== $currentws 9) {

    } elif (== $currentws 10) {

    } elif (== $currentws 11) {

    } 
}

printws