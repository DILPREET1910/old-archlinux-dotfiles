#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# add to path
export PATH="$PATH:/home/dilpreet/.local/bin"
export PATH="$PATH:/home/dilpreet/Documents/MyPrograms/Scripts/bin"
export PATH="$PATH:/home/dilpreet/.local/share/JetBrains/Toolbox/scripts" # JetBrain IDEs
export PATH="$PATH:/home/dilpreet/Documents/MyPrograms/android-sdk/emulator" # android sdk
export PATH="$PATH:/home/dilpreet/Documents/MyPrograms/android-sdk/tools" # android sdk

# add variables
export ANDROID_SDK=/home/dilpreet/Documents/MyPrograms/android-sdk

# start x11
startx
