# my_emacs_config

It is tested on Ubuntu 16. 
The customized keys are following.  
1. F9: create new shell
2. F10: rename the shell
3. F8: enlarge the current window

### Steps
#### Step1
Install emacs first.  
```
apt-get update
apt-get install emacs
```
#### Step2
Create the emacs configuration.
```
cd ~/
touch .emacs
```
#### Step3
Deploy the emacs configuration.  
```
cd ~/
git clone https://github.com/cao5zy/my_emacs_config.git
cp ./my_emacs_config/.emacs ./
```

#### Step4
Install packages in emacs. If you use older version of emacs, you should install [melpa](https://github.com/melpa/melpa) first.  
In the configuration, currently there are `zenburn` and `winum` to be required.  
Open emacs, you may see error messages because `zenburn` and `winum` haven't been installed yet.  
Input command `M-x package-install RETURN zenburn` and `M-x package-install RETURN winum`   
Restart emacs, it will launch without error message.  




