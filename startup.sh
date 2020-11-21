now=$(date)
echo ""
echo ""
echo ""
echo "-----------------------------------------------"
echo "-----------------------------------------------"
echo "-----------------------------------------------"
echo ""
echo "Starting at: $now"
echo ""

cd /usr/src/app

rm -R /usr/src/app/nodepolus

git clone --progress https://github.com/nodepolus/nodepolus /usr/src/app/nodepolus

cd /usr/src/app/nodepolus

npm install

npm start