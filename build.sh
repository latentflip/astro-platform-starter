echo "BUILDING ${DEPLOY_ID}"

rm -rf dist
mkdir dist
cp -r nlf .netlify
cp index.css dist/index.css
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" index.html > dist/index.html
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" index.js > dist/index.js