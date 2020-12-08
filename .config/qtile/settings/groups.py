# Antonio Sarosi
# https://youtube.com/c/antoniosarosi
# https://github.com/antoniosarosi/dotfiles

# Qtile workspaces

from libqtile.config import Key, Group, ScratchPad, DropDown, Match
from libqtile.command import lazy
from settings.keys import mod, keys


# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)
# Icons: 
# nf-fa-firefox, 
# nf-fae-python, 
# nf-dev-terminal, 
# nf-fa-code, 
# nf-seti-config, 
# nf-mdi-folder, 
# nf-mdi-image, 
# nf-fa-video_camera, 
# nf-mdi-layers

groups = [
    Group(" "),
    Group(" ",matches=[Match(wm_class=["brave-browser"])]),
    Group(" "),
    Group(" "),
    Group(" "),
    Group("6"),
    Group("7"),
]

groups.append(
    ScratchPad("scratchpad",[
        DropDown("term","alacritty",height=0.8,width=0.5,x=0.499,y=0.199,opacity=0.8,on_focus_lost_hide=False)]),


    )

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])



keys.extend([
    Key([],'F12',lazy.group['scratchpad'].dropdown_toggle('term')),
])
