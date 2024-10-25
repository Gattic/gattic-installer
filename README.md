# Bash
Append to your bashrc file:
```
alias gstatus="sh ~/dev/helper-scripts/.dev-status.sh"
alias gsetup="sh ~/dev/helper-scripts/.dev-setup.sh"
alias gsync="gsetup"
alias gswitch="sh ~/dev/helper-scripts/.dev-switch.sh"
alias gbuild="sh ~/dev/helper-scripts/.dev-build-image.sh"
```
One Liner to install to bashrc:
```
echo -e '\nalias gstatus="sh ~/dev/helper-scripts/.dev-status.sh"\nalias gsetup="sh ~/dev/helper-scripts/.dev-setup.sh"\nalias gsync="gsetup"\nalias gswitch="sh ~/dev/helper-scripts/.dev-switch.sh"\nalias gbuild="sh ~/dev/helper-scripts/.dev-build-image.sh"' >> ~/.bashrc
```

**All of these scripts rely on the user's `~/dev/` dir and `~/dev/prod/` dir.**


`sh .dev-setup.sh`
Downloads the projects into `~/dev/` via cloning from github.
If the project dirs already exist then it will harmlessly pull the latest changes.

`sh .dev-switch.sh [branch-name]`
Switch to a specified branch name for all C++ projects.

`sh .inc-upd.sh`
This copies all of the libraries' header files into `include-tmp`then installs them to each proper dependent library.
