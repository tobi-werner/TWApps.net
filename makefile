deployBeta:
	echo "Compile Website"
	hugo --minify --baseURL="http://beta.twapps.net/"
	echo "Upload"
	rsync -avz public/ strato:~/beta.twapps.net
	echo "Done uploading."

deployProd:
	echo "Compile Website"
	hugo --minify --baseURL="https://www.twapps.net/"
	echo "Upload"
	rsync -avz public/ strato:~/twapps.net
	echo "Done uploading."

build:
	hugo server -D

generatePresskit:
	scripts/generatePresskit.sh

deleteEmptyUrls:
	sh scripts/deleteEmptyUrls.sh
