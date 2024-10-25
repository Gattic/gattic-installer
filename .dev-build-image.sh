#Create the base dirs
devDir="$HOME/dev"
echo $devDir
mkdir "$devDir" 2> /dev/null

echo "----"

sh "$devDir/helper-scripts/.inc-upd.sh"

echo "----"
# Build and install it all
mkdir "$devDir/ShmeaDB/build" 2> /dev/null
cd "$devDir/ShmeaDB/build"
cmake ..
make install

echo "----"
mkdir "$devDir/glades-ml/build" 2> /dev/null
cd "$devDir/glades-ml/build"
cmake ..
make install

echo "----"
mkdir "$devDir/gfxplusplus/build" 2> /dev/null
cd "$devDir/gfxplusplus/build"
cmake ..
make install

echo "----"
mkdir "$devDir/NNCreator/build" 2> /dev/null
cd "$devDir/NNCreator/build"
cmake ..
make
