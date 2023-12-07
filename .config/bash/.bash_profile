#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# add to path
export PATH="$PATH:/home/dilpreet/.local/bin"
export PATH="$PATH:/home/dilpreet/Documents/MyPrograms/Scripts/bin"
export PATH="$PATH:/opt/android-sdk/tools" # android sdk

# add variables
export ANDROID_SDK=/opt/android-sdk

# start x11
startx
