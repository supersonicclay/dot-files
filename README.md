# My .bashrc and associated files

## Installation
```
# backup your ~/.bashrc file if present
git clone https://github.com/claycephas/bash-profile
cp -r bash-profile ~/
```

Paste this into your `~/.bash_profile` file (this causes bash to load the latest .bashrc file without having to logout and login again):

```
if [ -f ~/.bashrc ]; then
        source ~/.bashrc
fi
```


