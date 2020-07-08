var1=$(i3-msg -t get_workspaces \
        | jq '.[] | select(.focused==true).name' \
        | cut -d"\"" -f2 | cut -d":" -f1);~/git/ext/rofigen/rofigen ~/.config/i3/crofi/$var1