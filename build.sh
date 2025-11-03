echo "BUILDING ${DEPLOY_ID}"

rm -rf dist
mkdir dist
cp -r nlf .netlify
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" index.html > dist/index.html
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" index.js > dist/index.js
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" lazy.html > dist/lazy.html

ls -al .netlify

cat .netlify/v1/config.json
cat .netlify/v1/skew-protection.json