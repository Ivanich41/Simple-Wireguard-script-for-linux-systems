# Simple Wireguard script for linux systems
## What is it
![изображение](https://user-images.githubusercontent.com/77790965/159743278-3d14c4f1-5fdf-4165-8430-1f60409dab8f.png)

[Wireguard](https://www.wireguard.com) is a simple cross-platform open source tunnel which can help you to set your own VPN server. It has GUI apps for Windows, Android and IOS. But linux client only works in CLI what could be a problem in the era of popularization of VPN services.

This description is not a complete guide for full Wireguard setup. It just simplifies linux usage (for other platforms usual apps presented). You must setup backend to use this script. For example I used dedicated server via ssh and pivpn utility to generate configs for all my devices. You can start using script after reciving .conf file.

## Setup 
**For all operations you should be a superuser**

First of all you need to install Wireguard packeges at your distro.

For Debian-based distros use:
```
$ sudo apt install wireguard
```
For Arch-based distros use:
```
$ sudo pacman -S wireguard-tools resolvconf
```
(Choose openresolv option)

For other distros check the [instalation section](https://www.wireguard.com/install/) at Wireguard website. I only tested it on Linux Mint and Arch Linux systems.

After packeges instalation move your .conf file at /etc/wireguard directory. You can use command (in a directory with .conf file. Where "FILENAME" is a config name).
```
sudo mv FILENAME.conf /etc/wireguard
```
Now you can clone this repository and grab *Start.sh* in comfortable directory (Desktop for example).

Open this file with any text editor and edit the NAME variable on line number 2. Rename it according to the config file what you moved at previous step (without .conf at the end).

![изображение](https://user-images.githubusercontent.com/77790965/159752395-2736ffad-f5a1-4fdf-ac54-5c5bbdf1ea2a.png)

Now add the executable flag for the script file.

You can do it by terminal (in the directory with script) :
```
chmod +x ./Start.sh
```
Or properties button by clicking right mouse button at file:

*(There is a KDE Plasma interface in the example. It may differ depending on your Desktop Enviroment )*

![изображение](https://user-images.githubusercontent.com/77790965/159754181-35f3625f-8f29-4531-97f2-b56ed36e2476.png)

Now click "executable" checkbox and save changes

![изображение](https://user-images.githubusercontent.com/77790965/159754547-b9a591bd-801e-48a9-9d59-0f091ee4eef8.png)

## Starting 
To start at KDE ckick at file with right mouse button and click "Start at Konsole" ( or something like this with terminal logo).
In Cinnamon you may simple double click with left mouse button. Anyway you can open terminal in this direcotry and type: 
```
./Start.sh
```
It will requset superuser password. The script does not harm the system. You can check the source code by yourself. It just create an empty file in /etc directory to skip following checkups.

If script started successfully wireguard will display its settings. After that you will see simple IP checking (it must match the ip of your backend server). 

![изображение](https://user-images.githubusercontent.com/77790965/159780374-e8c1383c-14e1-468b-b4de-444e2281fd68.png)

Press any button to turn VPN off. It will display settings and IP again. Press any button one more time to close window (in Konsole only stops script).


