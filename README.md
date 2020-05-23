# dev-env
A collection of various scripts, configuration files, etc. for my personal development environment

## git
The first step after installing git is to configure settings related to user name, email, and text editor:
```
git config --global user.name "Your Name"
git config --global user.email "name@server.com"
git config --global core.editor vim
```

Another very helpful configuration is the **git prompt** script, located [here](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh). The purpose of this script is to interrogate some git repository details for the current workin directory, including the current branch of the repository, whether or not you have unstaged changes, untracked files, etc.
There is also the **git completion** script located [here](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh).

The included .bashrc file includes a customized PS1 variable that uses the linked git-prompt.

## Vim
First and foremost, it is important to configure Vim. The .vimrc file in this repository has general settings that can be applied for Vim without any 3rd party plugins. However, it also has sections that are only specific to plugins, and therefore, applying them requires you to have the plugin installed. I use [Vundle](https://github.com/VundleVim/Vundle.vim) to install and manage Vim plugins.

After updating .vimrc, and assuming Vundle has been installed, execute `:PluginInstall` in Vim to install any configured plugin specified in .vimrc.
