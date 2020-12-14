# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from typing import List  # noqa: F401

from libqtile import bar, layout, widget, hook, qtile
from libqtile.config import Click, Drag, Group, Key, Match, Screen, ScratchPad, DropDown
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from os import path
from subprocess import check_output, call
import subprocess
import json
import socket

mod = "mod4"
terminal = guess_terminal()
qtile_path = path.join(path.expanduser('~'),".config","qtile")
def load_theme():
     theme = "dark-grey"

     config = path.join(qtile_path, "themeconfig.json")
     if path.isfile(config):
         with open(config) as f:
             theme = json.load(f)["theme"]
     else:
         with open(config, "w") as f:
             f.write(f'{{"theme": "{theme}"}}\n')


     theme_file = path.join(qtile_path, "themes", f'{theme}.json')
     if not path.isfile(theme_file):
         raise Exception(f'"{theme_file}" does not exist')

     with open(path.join(theme_file)) as f:
         return json.load(f)


#if __name__ == "settings.theme":
colors = load_theme()


keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(),
        desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
#    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
#        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "shift"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "shift"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
#    Key([mod], "r", lazy.spawncmd(),
#        desc="Spawn a command using a prompt widget"),
    Key([mod], "r", lazy.spawn("rofi -combi-modi drun,run -show combi -modi combi -icon-theme 'Moka' -show-icons -columns 3"),desc="Rofi run commands"),
    Key([mod],"w",lazy.spawn("brave"),desc="Brave browser"),
    Key([mod],"f",lazy.spawn("dolphin"),desc="File Manager"),
    Key([mod], "x", lazy.spawn("oblogout -c "+path.join(qtile_path,"oblogout.conf")),desc="Logout screen"),
    Key([mod], "F1", lazy.spawn(terminal+" --hold -e "+path.join(qtile_path,"mykey.py")),desc="Show hotkeys"),
    # Sound
    Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle"), desc="Volume Mute"),
    Key([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%"), desc="Volume Down"),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%"),desc="Volume Up"),
#    Key([], "XF86AudioNext", lazy.spawn(""),desc="Next Song"),
#    Key([], "XF86AudioPrev", lazy.spawn(""),desc="Previous Song"),
#    Key([], "XF86AudioPause", lazy.spawn(""),desc="Pause Song"),
    Key([], "XF86MonBrightnessUp", lazy.spawn("xbacklight -inc 10"), desc="Brightness Up"),
    Key([], "XF86MonBrightnessDown", lazy.spawn("xbacklight -dec 10"), desc="Birghtness Down"),

]

#groups = [
#     Group(" "),
#     Group(" ",matches=[Match(wm_class=["brave-browser"])]),
#     Group(" "),
#     Group(" "),
#     Group(" "),
#     Group("6"),
#     Group("7"),
#]

#group_info = [
#        ['1',''],
#        ['2','爵'],
#        ['3',''],
#        ['4',''],
#        ['5',''],
#        ['6','6'],
#        ['7','7'],
#
#]

#groups= [Group(i) for i in "1234566"]
#groups = [Group(name=i[0],label=i[1]) for i in group_info]
groups = []
groups.extend([
       Group('1', label=''),
#      Group('2', matches=Match(wm_class='brave-browser'), layout='max', label='爵'),
#       Group('3', matches=Match(wm_class='dolphin'), label=''),
#       Group('4', matches=[Match(wm_class='gimp'),Match(wm_class='krita')], layout='max', label=''),
#       Group('5', matches=Match(wm_class='Blender'), layout='max',  label=''),
#       Group('2', layout='max', label='爵'),
       Group('2', label='爵'),
       Group('3', label=''),
       Group('4', layout='max', label=''),
       Group('5', layout='max',  label=''),
       Group('6', persist=True, label='➏'),
       Group('7', persist=True, label='➐')
])

groups.append(
     ScratchPad("8", [
         DropDown("term","alacritty",height=0.8,width=0.5,x=0.499,y=0.199,opacity=0.8,on_focus_lost_hide=False)]),
)


for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
    ])

keys.extend([
     Key([],'F12',lazy.group['8'].dropdown_toggle('term')),
])

layout_conf = {
     'border_focus': colors['focus'][0],
     'border_width': 2,
     'margin': 20
}

layouts = [
#    layout.Columns(border_focus_stack='#d75f5f'),
    layout.MonadTall(**layout_conf),
    layout.Max(),
    layout.RatioTile(**layout_conf),
    layout.Floating(**layout_conf),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

#widget_defaults = dict(
#    font='sans',
#    fontsize=12,
#    padding=3,
#)
#extension_defaults = widget_defaults.copy()
#
#
#screens = [
#    Screen(
#        bottom=bar.Bar(
#            [
#                widget.CurrentLayout(),
#                widget.GroupBox(),
#                widget.Prompt(),
#                widget.WindowName(),
#                widget.Chord(
#                    chords_colors={
#                        'launch': ("#ff0000", "#ffffff"),
#                    },
#                    name_transform=lambda name: name.upper(),
#                ),
#                widget.TextBox("default config", name="default"),
#                widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
#                widget.Systray(),
#                widget.Clock(format='%Y-%m-%d %a %I:%M %p'),
#                widget.QuickExit(),
#            ],
#            24,
#        ),
#    ),
#]


base = lambda fg='text', bg='dark': {
    'foreground': colors[fg],
    'background': colors[bg]
}

separator = lambda: widget.Sep(**base(), linewidth=0, padding=5)

icon = lambda fg='text', bg='dark', fontsize=16, text="?": widget.TextBox(
    **base(fg, bg),
    fontsize=fontsize,
    text=text,
    padding=3
)

powerline = lambda fg="light", bg="dark": widget.TextBox(
   **base(fg, bg),
    text="", # Icon: nf-oct-triangle_left
    fontsize=37,
    padding=-2
)
workspaces = lambda: [
    separator(),
    widget.GroupBox(
        **base(fg='light'),
        font='UbuntuMono Nerd Font',
        fontsize=19,
        margin_y=3,
        margin_x=0,
        padding_y=8,
        padding_x=5,
        borderwidth=1,
        active=colors['active'],
        inactive=colors['inactive'],
        rounded=False,
        highlight_method='block',
        urgent_alert_method='block',
        urgent_border=colors['urgent'],
        this_current_screen_border=colors['focus'],
        this_screen_border=colors['grey'],
        other_current_screen_border=colors['dark'],
        other_screen_border=colors['dark'],
        disable_drag=True
    ),
    separator(),
    widget.WindowName(**base(fg='focus'), fontsize=14, padding=5),
    separator(),
]

myhostname =  socket.gethostname()
if myhostname == "tramhao-pc":
    network_interface="enp3s0"
elif myhostname =="XMLaptop":
    network_interface="wlp2s0"
else:
    network_interface=None

primary_widgets = [
    *workspaces(),

    separator(),

    powerline('color4', 'dark'),

    icon(bg="color4", text=' '), # Icon: nf-fa-download

    widget.CheckUpdates(**base(bg='color4'), colour_no_updates='ffffff', colour_have_updates='7fff00', no_update_string=' ', update_interval=300,custom_command='checkupdates', execute=terminal+" --class 'Floating' --hold -e yay -Syu"),

    powerline('color2','color4'),
    icon(bg="color2",text=''),
    widget.CPU(**base(bg='color2'),format = '{freq_current}GHz {load_percent}%', mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(terminal+" --class 'Floating' -e bpytop")}),
    powerline('color1','color2'),
    icon(bg="color1",text=''),
    widget.Memory(**base(bg='color1')),
    powerline('color3', 'color1'),

    icon(bg="color3", text=' '),  # Icon: nf-fa-feed

    widget.Net(**base(bg='color3'), interface=network_interface),

    powerline('color2', 'color3'),

    widget.CurrentLayoutIcon(**base(bg='color2'), scale=0.65),

    #widget.CurrentLayout(**base(bg='color2'), padding=5),

    powerline('color1', 'color2'),

    icon(bg="color1", fontsize=17, text=' '), # Icon: nf-mdi-calendar_clock

    widget.Clock(**base(bg='color1'), format='%m/%d-%H:%M ', mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(terminal+" --class 'Floating' -e calcurse")}),

    powerline('dark', 'color1'),

    #widget.Wallpaper(random_selection=True,background=colors['dark']),

    widget.Systray(background=colors['dark'], padding=5),

]

secondary_widgets = [
    *workspaces(),

    separator(),

    powerline('color1', 'dark'),

    widget.CurrentLayoutIcon(**base(bg='color1'), scale=0.65),

    widget.CurrentLayout(**base(bg='color1'), padding=5),
]

widget_defaults = {
    'font': 'UbuntuMono Nerd Font Bold',
    'fontsize': 14,
    'padding': 1,
}
extension_defaults = widget_defaults.copy()
status_bar = lambda widgets: bar.Bar(widgets, 24, opacity=1)

screens = [Screen(top=status_bar(primary_widgets))]

connected_monitors = subprocess.run(
     "xrandr | grep 'connected' | cut -d ' ' -f 2",
     shell=True,
     stdout=subprocess.PIPE
).stdout.decode("UTF-8").split("\n")[:-1].count("connected")

if connected_monitors > 1:
     for i in range(1, connected_monitors):
        screens.append(Screen(top=status_bar(secondary_widgets)))




# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False



floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    Match(wm_type='utility'),
    Match(wm_type='notification'),
    Match(wm_type='toolbar'),
    Match(wm_type='splash'),
    Match(wm_type='dialog'),
    Match(wm_class='file_progress'),
    Match(wm_class='confirm'),
    Match(wm_class='dialog'),
    Match(wm_class='download'),
    Match(wm_class='error'),
    Match(wm_class='notification'),
    Match(wm_class='splash'),
    Match(wm_class='toolbar'),
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
    Match(wm_class='oblogout'),
#    Match(wm_class='Floating'),
],
   border_focus=colors["color4"][0]
)
auto_fullscreen = True
focus_on_window_activation = "smart"


@hook.subscribe.startup_once
def autostart():
    subprocess.call(path.join(qtile_path,'autostart.sh'))

@hook.subscribe.client_new
def set_group(mywindow):
    wm=mywindow.cmd_inspect()
#    print (wm['wm_class'])

    if "brave-browser" in wm['wm_class']:
        mywindow.togroup("2", switch_group=True)
#        print("222")
    if "dolphin" in wm['wm_class']:
        mywindow.togroup("3", switch_group=True)
    if "krita" in wm['wm_class']:
        mywindow.togroup("4", switch_group=True)
    if "gimp" in wm['wm_class']:
        mywindow.togroup("4", switch_group=True)
    if "Blender" in wm['wm_class']:
        mywindow.togroup("5", switch_group=True)
    if "Floating" in wm['wm_class']:
        mywindow.togroup("7", switch_group=True)
        mywindow.toggle_maximized()

#@hook.subscribe.screen_change
#def restart_on_randr(ev):
##    lazy.restart()
##    qtile.log.debug('screen change event: %s' % ev)
#    xrandr_state = check_output(['xrandr'])
##    qtile.log.debug('xrandr output:\n%s' % xrandr_state.decode("latin_1"))
#    if b'DP1 connected' in xrandr_state:
#        xrandr_setting = [
#            'xrandr',
#            '--output','DP1', '--primary', '--mode', '1920x1200',
#            '--output','eDP1', '--off',
#            '--output','HDMI2','--auto',
#        ]
#    else:
#        xrandr_setting = [
#            'xrandr',
#            '--output','eDP1','--auto',
#        ]
#    call(xrandr_setting)
#    lazy.restart()


# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
WMname = "LG3D"
