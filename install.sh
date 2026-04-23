read -p "Would you like to change the mirror before doing anything? [Y/n]: " confirm

if [[ "$confirm" =~ ^[nN] ]]; then
    echo "Skipping..."
else
    termux-change-repo
fi
clear
echo "Running pkg upgrade..."
sleep 4
pkg upg -y
clear
echo "Installing required packages..."
pkg install libjansson automake build-essential wget git  -y
clear
echo "Building ccminer..."
cd $HOME
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x autogen.sh
chmod +x configure.sh
./build.sh
clear
echo "Copying ccminer to bin.."
sleep 4
cp ccminer $PREFIX/bin
clear
read -p "Delete unnecessary files after build? It will delete cloned git repo. [Y/n]: " confirm2

if [[ "$confirm2" =~ ^[nN] ]]; then
    echo "Alright. I'll keep directory ccminer."
    echo "Done! now run ccminer --help to get information."
    cd $HOME
else
    echo "Deleting directory ccminer..."
    rm -fr $HOME/ccminer
    cd $HOME
    echo "Done! now run ccminer --help to get information."
fi
