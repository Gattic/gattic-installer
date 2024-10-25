#Create the base dirs
devDir="$HOME/dev"

branchName="$1"
if [ -z ${branchName} ]; then
	echo "Please specify a branch name."
	exit
fi

mkdir "$devDir" 2> /dev/null

echo "Switching all repos to $branchName"
echo "----"

echo "$devDir/ShmeaDB"
git -C "$devDir/ShmeaDB" checkout $branchName
echo "----"

echo "$devDir/glades-ml"
git -C "$devDir/glades-ml" checkout $branchName
echo "----"

echo "$devDir/gfxplusplus"
git -C "$devDir/gfxplusplus" checkout $branchName
echo "----"

echo "$devDir/NNCreator"
git -C "$devDir/NNCreator" checkout $branchName
echo "----"
