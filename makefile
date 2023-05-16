deployBeta:
	echo "Compile Website"
	hugo --minify --baseURL="http://beta.twapps.net/"
	echo "Upload"
	rsync -avz public/ ${STRATO_USER}@${STRATO_HOST}:~/beta.twapps.net
	echo "Done uploading."

deployLive:
	echo "Compile Website"
	hugo --minify --baseURL="https://www.twapps.net/"
	echo "Upload"
	rsync -avz public/ ${STRATO_USER}@${STRATO_HOST}:~/twapps.net
	echo "Done uploading."

buildDevelopment:
	hugo server -D

