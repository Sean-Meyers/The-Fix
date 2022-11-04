story="TheFix"

# Change this if your Twine story directory is somewhere else.
# Note: if it can't find the directory no matter what, you may need to run this
# script from a bash shell directly (just type "./import.sh" in git bash). in my
# case, it couldn't find the right $HOME because it was using the wrong bash
# when i typed "bash import.sh" in pwsh. This prolly won't be an issue if you
# don't have wsl like i do tho.
twineStoryDir="$HOME/Documents/Twine/Stories"

# Change this to be your tweego command, if tweego is in your path it may be
# just "tweego" or "tweego.exe", otherwise, you may need to write the full path
# to the program like I have here.
tweego="../tweego-2.1.1-windows-x64/tweego.exe"


if [[ "$1" == "pull" ]]; then
    git pull
fi

# Compile the html file from twee
$tweego -o "$story.html" "$story.twee"

# Move to story directory
mv -i "$story.html" $twineStoryDir
