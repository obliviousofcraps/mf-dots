<p align="center">
  <a name="top" href="#">
     <img alt="mf-dots" height="60%" width="100%" src="https://i.ibb.co/nkw32yJ/repo-name.png"/>
  </a>
</p>

<p align="center">
<a href="https://github.com/obliviousofcraps/mf-dots/stargazers"><img src="https://img.shields.io/github/stars/obliviousofcraps/mf-dots?color=89e19c&style=flat-square&logo=starship&labelColor=1d212a"></a>
<a href="https://github.com/obliviousofcraps/mf-dots/network/members"><img src="https://img.shields.io/github/forks/obliviousofcraps/mf-dots?color=84afdb&style=flat-square&logo=jfrog-bintray&labelColor=1d212a"></a>

<img alt="" src="https://img.shields.io/github/last-commit/obliviousofcraps/mf-dots?color=fbdf90&label=updated&style=flat-square&labelColor=1d212a"/>

<img alt="" src="https://img.shields.io/github/repo-size/obliviousofcraps/mf-dots?style=flat-square&label=repo-size&color=fb9199&labelColor=1d212a"/>
</p>
<br/>  

# 

### :wrench: **My Arch based Openbox configs:**  

Welcome :pray:! and thanks for dropping by. 

These are my openbox configs that I use in my arch system. You might have noticed that all my other configs are are not here. Fear not, you can find all of my older configs in the older-configs branch. 

I am still learning my way around customizing and setting up my device so just go easy on me for now. If you have any issues or ideas feel free to open an issue or pr it. Any kind of contribution is greatly appreciated.
##

### :computer: **System Information :**

These are some of the applications that I use in my current setup. 

- **Distribution**: Arch Linux  
- **Window Manager**: [Openbox](https://openbox.org/)  
- **Shell**:Bash  
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)  
- **Display Manager**: [Slim](https://github.com/gsingh93/slim-display-manager)  
- **Apps Launcher**: [rofi](https://github.com/davatorium/rofi)  
- **Widgets**: [Eww](https://github.com/elkowar/eww)  
- **Panel**: [Tint2](https://github.com/semplice/tint2)  
- **Text Editor**: Geany & Vim  
- **File Manager**: Thunar  
- **Notification-daemon**: [Dunst](https://wiki.archlinux.org/index.php/Dunst)  
- **Music Player (CLI)**: ncmpcpp  
- **Display Manager**: Slim (slim provide slimlock for lockscreen too.)
### :camera: **Screenshot**
<br/>

**Dark Theme :**
<p>
  <img src="https://i.ibb.co/SKbTkjQ/12.png" alt="Dark-setup">
</p>
<br/>

**Light Theme :**
<p>
  <img src="https://i.ibb.co/bvfYdc8/preview-light.png" alt="Light-setup">
</p>
</br>

### :rice_scene: **Widget Setup**
In order to use the widgets you need eww which you can get from [here](https://github.com/elkowar/eww).To install eww to your system you will need rust toolchain nightly. Once you have it you can follow these steps:  

 ```
 git clone git@github.com:elkowar/eww.git
 cd eww/
 cargo build --release
 ```
 Once it has been built, you can run it directly form the directory or in order to use it system wide copy the bin to your $PATH

```
cd eww/target/release
chmod +x ./eww
cp eww ~/$PATH (in my case its ~/.local/bin/)
```
After you have it in your path you can run eww by entering:
```
eww daemon (to start the eww daemon)
eww windows (lists available widgets)
eww open widget-name (to open a single widget)
eww open-many widget-name1 widget-name2 widget-name3 (to open multiple widgets)
```




### :art: **ColorScheme**  

Eh, I decided to call it Oblivion. Sounds cooler. Light Scheme is in the works too. ![Colorscheme](https://i.ibb.co/qFxXm1Q/Oblivion.png)  

### :memo: **Some notes**:  
- The widgets are for my screen i.e 1366x768 so if it looks weird you will have to adjust them to your screen size.
- SLim is maintained no more. But that doesn't mean it won't work. Still, keep that in mind that it doesn't recive any updates or bug fixes. 
- You will need **picom-git** in order to get the rounded corners. Or you can use some other forks.
- The menu icons and some widget icons will not appear. Its not a bug but rather the icons I use are from a paid icon pack (**Candy icons**) so I can't share those. You will have to use other icons or get the icons from playstore.

If you encounter any issues please let me know. And if you wanna help me with a install script that would be fantastic cuz I don't know much scripting :cry:.

**Credits:**  
[Owl4ce](https://github.com/owl4ce/dotfiles) (Some scripts and helping me get into linux with his beautiful showcases in unixporn)  
[Rajshekhar26](https://github.com/rajshekhar26/dotfiles) (Redshift script) and  

All the fantastic and crazy creative and helpful people from [r/unixporn](https://reddit.com/r/unixporn) community. 
