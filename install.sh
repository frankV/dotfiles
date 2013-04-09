# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################
########## Variables

dir=~/dotfiles   		                 # dotfiles directory
olddir=~/dotfiles_old           		 # old dotfiles backup directory

# list of files/folders to symlink in homedir
files="cshrc bashrc bash_profile gitconfig vimrc vim zshrc Xresources"

##########
## we bont want to replace our original dotfiles
# so check for dotfiles_old/ first
if [ ! -d $olddir ]; then
    echo "old_dotfiles does not exist"
     create dotfiles_old in homedir
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir
    echo "DONE"

    # change to the dotfiles directory
    echo "Changing to the $dir directory"
    cd $dir
    echo "DONE"

    # move existing dotfiles in homedir to dotfiles_old then create symlinks
    for file in $files; do
        echo "Moving any existing dotfiles from ~ to $olddir"
        mv ~/.$file ~/dotfiles_old/
        echo "Creating symlink to $file in home directory."
        ln -s $dir/_$file ~/.$file
    done
fi
echo "backups were found. DONE"

############ TO DO
###
##
# add system detection
#       1. install macports if not installed (mac only)
#       2. install homebrew (mac only)
#       3. python pip
#       4. virtualenv