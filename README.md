# Physics CSR Displayboard
A custom Archlinux live build for our office display

## Overview
I chose to build this with Archiso since that would allow
quick duplication, as well as reduce the chance of hardware
failure causing us to lose critical configuration.  In addition,
the Archiso configuration files can be checked into
version control, which provides many benefits.

I'll be filling this file out with more information as
I build the platform.  For now, here's a skeleton of the
info you can find here:

## Required Software

In order to work with the Archlive build system you need
a system with Archlinux, and the Archiso package installed.

I've based our image off of the "releng" profile.  As
opposed to the other "baseline" profile, this provides
us with a much more fully-featured platform for building
an OS.

### Getting started

Read up on Archiso [here](https://wiki.archlinux.org/index.php/Archiso).
When you're ready to begin you can check out this repo.

You can check out this repo into any folder really,
as the build scripts will work no matter where you
place them.  However, it is worthy of note that ***all
files in the archlive folder will need to be owned
by root in order for the build to succeed.*** Git
does not preserve these permissions, so you will
need to change ownership of the archlive folder and
all files in it.

Please show the appropriate amount of caution for
working with files as root.  We are not responsible
if you destroy your system in the process.

## Relevant Information

Info and documentation

### Notable required packages

###### xorg-server, xorg-server-utils, and xorg-xinit
I hope I don't need to explain to you why these are necessary.
###### ttf-dejavu
Basic fonts
###### bspwm
Window and desktop management
###### chromium
For running the display board
###### sxhkd
This allows us to control bspwm via the keyboard if and
when things go wrong
###### lxterminal
Also here for if things go wrong
###### dmenu
So we can run arbitrary commands easily
###### xf86-input-synaptics
So the touchpad works on our Dell laptop
###### compton
For nice compositing effects and window transitions.

### Nonstandard configuration

The .xinitrc script is somewhat nonstandard, see [below](#xinitrc).

### Startup scripts

###### Systemd autologin
    archlive/airootfs/etc/systemd/system/getty@tty1.service.d/autologin.conf
I modified it from the default so that it would log in as the
use 'display'.

###### zshrc
    archlive/airootfs/etc/skel/.zshrc
Base skeleton startup file that launches X once per tty:

    [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx

###### xinitrc
    archlive/airootfs/etc/skel/.xinitrc
Uses xrandr to disable the laptop display, then puts the VGA
display in auto mode so it will hopefully use the highest
resolution.  Starts bspwm.

###### bspwm
    archlive/airootfs/etc/skel/.config/bspwm/bspwmrc
Pretty typical.  Starts sxhkd, sets some bspw configuration
(including switching to "monacle mode"), then starts compton
and chromium.

### Remote Control

We haven't actually done this yet.
