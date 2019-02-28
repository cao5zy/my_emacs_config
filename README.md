# my_emacs_config

It is tested on Ubuntu 16. 
The customized keys are following.  
1. F9: create new shell
2. F10: rename the shell
3. F8: enlarge the current window
4. C-M-n: move down 5 lines
5. C-M-p: move up 5 lines

Other abilities:
- Show the line number automatically

### Steps
#### Step1
Install emacs first.  
```
apt-get update
apt-get install emacs
```
#### Step2
Deploy the emacs configuration.  
```
cd ~/
git clone https://github.com/cao5zy/my_emacs_config.git
cp ./my_emacs_config/.emacs ./
```

#### Step3 
Install zenburn package
```
cd ~/
git clone https://github.com/bbatsov/zenburn-emacs.git
mkdir ~/.emacs.d/themes/ -p
cp ./zenburn-emacs/zenburn-theme.el ./.emacs.d/themes
```

Install the linum-mode-off.el
```
wget http://www.emacswiki.org/emacs/download/linum-off.el 
```

Now you can open your emacs.


