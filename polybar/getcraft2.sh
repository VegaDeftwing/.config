num=$(head -n 2 ~/.config/craftonline | tail -n 1)
if [[ $num -ge 1 ]]
then
	echo %{F#f00} $num
else
	echo " $num"
fi