#Create the base dirs
devDir="$HOME/dev/"
echo $devDir

mkdir "$devDir" 2> /dev/null

git -C "$devDir" clone git@github.com:Gattic/public-scripts.git
git -C "$devDir/public-scripts" pull origin

git -C "$devDir" clone git@github.com:Gattic/ShmeaDB.git
git -C "$devDir/ShmeaDB" pull origin

git -C "$devDir" clone git@github.com:Gattic/glades-ml.git
git -C "$devDir/glades-ml" pull origin

git -C "$devDir" clone git@github.com:Gattic/gfxplusplus.git
git -C "$devDir/gfxplusplus" pull origin

git -C "$devDir" clone git@github.com:Gattic/NNCreator.git
git -C "$devDir/NNCreator" pull origin
