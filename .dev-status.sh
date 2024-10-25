#Create the base dirs
devDir="$HOME/dev/"
echo $devDir

mkdir "$devDir" 2> /dev/null

echo "------------------------"
echo " ShmeaDB"
git -C "$devDir/ShmeaDB" status
echo "------------------------"
echo " glades-ml"
git -C "$devDir/glades-ml" status
echo "------------------------"
echo " gfxplusplus"
git -C "$devDir/gfxplusplus" status
echo "------------------------"
echo " NNCreator"
git -C "$devDir/NNCreator" status
