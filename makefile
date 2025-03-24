install:
	npm install
	(cd src/main/docan && npx node-gyp rebuild)
	(cd src/main/dolin && npx node-gyp rebuild)
run:
	npm run dev
