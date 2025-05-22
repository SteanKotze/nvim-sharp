# Setup
## Install
Run the following commands in your terminal in order to install everything you need:
```
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo snap install brave spotify dbeaver-ce telegram-desktop
sudo snap install nvim --classic
sudo apt install gnome-shell-extension-manager build-essential xclip git dconf-editor ripgrep remmina -y
```

## GIT Setup
In order to use git you will have to create an SSH key and upload it to the relevant platform

### Azure Devops
 - Run the following command in your terminal to create a new RSA SSH key for Azure. Follow the prompts and be sure to use a descriptive name and a password that you will remember.
```
ssh-keygen -t rsa -b 4096 -c "<<email>>"
```

 - Run the following command to go to your folder where your ssh keys are saves:
```
cd ~/.ssh
```

 - Run the following command in your terminal to see the contents of your public key:
```
cat <<ssh_key_name>>.pub
```

 - Copy the contents of the file from your terminal
 - Go to Azure Devops on your Browser
 - Click on the 'User Settings' option in the top right of the screen
 - Click on the 'SSH Keys' option in the drop-down menu
 - Create a new SSH Key with the contents that you copied earlier

## Workspace
### STEP 1 : Installing V-Shell
In the terminal install exstension manager:
```sudo apt install gnome-shell-extension-manager```

Once completed, type `extension-manager` in the terminal to open the GUI. In the search bar you then want to
search for `v-shell` and install it.

### STEP 2 : Setting keyboard shortcuts
In the terminal, install the dconf-editor GUI using the command below:
```sudo apt install dconf-editor```

Once completed, type `dconf-editor` in your terminal to open the GUI. Once open follow the below
path to get to the workspace settings:
    ```/org/gnome/desktop/wm/keybindings```

Now, search for `workspace-[up/down]` and then you can modify the keybindings as you require.

### STEP 3 : Disable unnecesarry animations
Type `dconf-editor` into your terminal to open the config GUI if it is not already open. Once open
follow the below path to get to the animation settings:
    ```/org/gnome/desktop/interface```

Now, search for the `enable-animations` setting and disable it.

## Terminal
### Neovim
First we'll want to install neovim. Open your terminal and run the below command:
    ```sudo snap install neovim --classic```

Once completed, we will need to ensure that the neovim config exists on our system. Navigate to your config
folder using the below command:
    ```cd .config```

Now, type `ls` and confirm if an `nvim` folder exists. If it does not, then run the below command:
    ```mkdir nvim```

If we now type `ls` there should be a nvim folder. CD to that folder and then run the below command to create
your neovim init file:
    ```touch init.lua```

#### Scripts

#### Extensions
 - folke/todo-comments.nvim
    - Functionality: Highlight keywords inside of the editor
    - Dependancies:
        - nvim-lua/plenary.nvim
 - gitsigns.nvim
    - Functionality: Provide git signs in the editor
 - which-key.nvim
    - Functionality: Shows pending key options. Useful for user with <leader>

#### Keybinds
 - :Lazy
    - Opens the lazy nvim dashboard
 - <leader>s
    - Search functionality

#### Bugs

### GIT
<<ToDo>>

#### Scripts

## Other
### Applications

