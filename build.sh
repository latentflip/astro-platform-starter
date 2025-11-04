echo "BUILDING ${DEPLOY_ID}"

rm -rf dist
mkdir dist
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" index.html > dist/index.html
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" index.js > dist/index.js
sed "s/DEPLOY_ID/${DEPLOY_ID}/g" lazy.html > "dist/lazy.$DEPLOY_ID.html"
cp index.css dist/index.css

mkdir -p .netlify/v1
cp nlf/v1/skew-protection.json .netlify/v1/skew-protection.json

cat dist/lazy.$DEPLOY_ID.html