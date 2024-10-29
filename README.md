# Install

`gsetup`
or
`sh ~dev/gattic-installer/.dev-setup.sh`

## Environment Setup

**All of these scripts rely on the user's `~/dev/` dir

1. Commands - Easy Install

```
echo -e '\nalias gstatus="sh ~/dev/gattic-installer/.dev-status.sh"\nalias gsetup="sh ~/dev/gattic-installer/.dev-setup.sh"\nalias gsync="gsetup"\nalias gswitch="sh ~/dev/gattic-installer/.dev-switch.sh"\nalias gbuild="sh ~/dev/gattic-installer/.dev-build-image.sh"' >> ~/.bashrc
```

2. Commands - Manual Install

Append to your bashrc file using `vim ~/.bashrc` or `nano ~/.bashrc` or `emacs ~/.bashrc` the following lines:

```
alias gstatus="sh ~/dev/gattic-installer/.dev-status.sh"
alias gsetup="sh ~/dev/gattic-installer/.dev-setup.sh"
alias gsync="gsetup"
alias gswitch="sh ~/dev/gattic-installer/.dev-switch.sh"
alias gbuild="sh ~/dev/gattic-installer/.dev-build-image.sh"
```

# Usage

## Commands
`gstatus` view the (git) status of all projects
`gsetup` clones the projects from github for an initial install; Techincally the same as `gsync`
`gsync` pulls the latest changes from the remote repositories; Technichally the same as `gsetup`
`gswitch [branch-name]` switches all projects to the specified branch
`gbuild` syncrhonizes the include headers then compiles the project


## Files

`sh .dev-setup.sh`
Downloads the projects into `~/dev/` via cloning from github.
If the project dirs already exist then it will harmlessly pull the latest changes.

`sh .dev-switch.sh [branch-name]`
Switch to a specified branch name for all C++ projects.

`sh .inc-upd.sh`
This copies all of the libraries' header files into `include-tmp`then installs them to each proper dependent library.
