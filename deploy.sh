echo "Switching to branch Master"
git checkout master

echo "Building app..."
npm run build 

echo "Deploying files to server..."

scp -r build/*  ssh grafstyle@192.168.16.10:/var/192.168.16.10/

echo "Done!"