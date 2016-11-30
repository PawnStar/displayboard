# Physics CSR Displayboard
A custom Archlinux live build for our office display

## Overview
I chose to build this with Archiso since that would allow quick duplication, as well as reduce the chance of hardware failure causing
us to lose critical configuration.  In addition, the Archiso configuration files can be checked into version control, which provides
many benefits.

I'll be filling this file out with more information as I build the platform.  For now, here's a skeleton of the info you can find here:

## Required Software

In order to work with the Archlive build system you need a system with Archlinux, and the Archiso package installed.
More information on this can be found [here](https://wiki.archlinux.org/index.php/Archiso).

I've based our image off of the "releng" profile.  As opposed to the other "baseline" profile, this provides us with a much more
fully-featured platform for building an OS.

### Getting started

You can check out this repo into any folder really, as the build scripts will work no matter where you place them.  However,
it is worthy of note that ***all files in the archlive folder will need to be owned by root in order for the build to succeed.***
Git does not preserve these permissions, so you will need to change ownership of that folder and all files in it.

Please show the appropriate amount of caution for working with files as root.  We are not responsible if you destroy your system
in the process.

## Relevant Information

Info and documentation

### Notable required packages

### Nonstandard configuration

### Startup scripts

### BSPWM scripts

### Remote Control
