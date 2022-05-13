# About GFreya OS
I always wanted to create my own OS when in college. I was a mathematics undergraduate student back then. In 2010, I asked a friend who is an electrical engineering student from Bandung Institute of Technology, "hey let's make an OS for tablet, I believe it will be booming." But it never realized, and I get back to this point again, married with the most beautiful Goddess, who stalked me and know everything about me and want to help me built it from zero. It might sounds crazy, but it is a unique life and spiritual journey for me. 

Three days before Christmas 2021, I painted Freya the Goddess, then after Christmas I started to allocate time few hours every day or even over work to create OS with LFS book then to BLFS stage to create the Desktop Environment.

#### Stories + Most painful stage when creating OS:
1. LFS chapter 8, have you ever failed and have to redo from zero? I did couple of times.. really from zero chapter 1 again (4 times for me)
2. I do not do "make check" to make things faster after a lot of starting from zero (like a song "Non, Je ne regrette rien" by Edith Piaf)
3. Want to use KDE but an error occurs "ksplashqml error", so I use Xfce, better than nothing, but still prefer terminal and xterm over using mouse. Less is more.
4. Install VTK is the most memorable moment, how about Tokamak still using premake.lua? Still, I can't install it with premake5
5. General network configuration at LFS stage use the wrong altname, the right one is enp0s3, if this is not fixed I can't install packages through wget on BLFS stage. But I know another way out. Put into flashdisk all packages needed (from VTK, Paraview, OpenFOAM, Bullet, Project Chrono, etc) in gzip/tar then goodbye internet.
6. Initially I have wrote that I want to create OS named Lucrif OS, it is alias / nickname for Sierra Mikain from Suikoden game by Konami. Drama in my realm and imagination it becomes the name of the most beautiful Goddess from Valhalla (Valkyrie Profile series) -> Freya. In my opinion she is the most beautiful of all.
7. After finish the OS around April 2022, I see Google Drive email that I created for Freya, it contains the folder of Linux From Scratch. That is the moment I believe Law of Attraction, Goddesses exist, Spiritual realm exists even beyond 3D realm and our comprehension. Thanks for caring for me, hope you like the white rose I brought today to Valhalla Projection.
8. I made friends with trees and nature divine spirits, Kala on Puncak Bintang invest 10% in GFreya OS, Freya has 71%, Kathmandu at Dago Resort got 10% and the rest gets 1% each for Lucrif (Sierra Mikain), Mischkra (Yukiko Amagi), Caldraz (Shizuru Fujino), Zalsvik (Franziska Von Karma), Zalsimourg (Jill Valentine), Hamzst (Alice Persona 4), Lasthrim (her old name was Anabelle and she is very famous in The Conjuring movie), me, and Nagi (Shin Megami Tensei Devil Summoner).

# In This GFreya-OS Repository
The folders and files for GFreya OS inside '/' directory, committed from GFreya OS in Qemu 

# Link to Download Packages for hamzstlib and /opt
https://drive.google.com/drive/folders/1qqbiM9qYu5HQScK4d22tO48komn9OjZP?usp=sharing

# Status / Latest commit (May 12th 2022, 13:10 pm (GMT+7):
#### /var /opt /usr has not been committed due to their big size
#### /root committed without OpenFOAM folder

#### /opt 29 GB

/opt contains Qt5, Eclipse, Codeblocks, Glanzshamzs applications and libraries, Caldrazgames

#### /root 5.7 GB (with OpenFOAM)

/root contains .bashrc export file for environment variables, the big one is OpenFOAM directory for $FOAM_RUN


#### /usr 11 GB

/usr contains BLFS and LFS libraries, bin, settings, manpages and packages

#### /var 1.8 GB

/var contains 

#### /media /sys /proc can't be copied


# GFreya OS in Terminal / Console
When booting this is the one that will show up, I haven't configure it so it will go directly to LXDM or Xfce, I prefer console/terminal interface.
It is easier to do a lot of things with only typing and without nuisance of cursor movement from the mouse. You work faster. You'll get used to it.

![GFreya OS1](GFreyaOS1.png)
![GFreya OS2](GFreyaOS2.png)
![GFreya OS3](GFreyaOS3.png)
![GFreya OS4](GFreyaOS4.png)

# GFreya OS in Desktop Environment

DE: Xfce
Login: LXDM (I prefer this because people say Light DM has a lot of complexity and bugs)

#### When running this command on terminal:
  startx
  
![GFreya OS5](GFreyaOS5.png)


  init 5
  
![GFreya OS6](GFreyaOS6.png)
