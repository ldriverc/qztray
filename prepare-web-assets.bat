@echo off
set VERSION=2.2.6
set DIST_DIR=c:\Users\eleven techs\Documents\GitHub\qztray\out\dist
set OUT_DIR=c:\Users\eleven techs\Documents\GitHub\qztray\out

echo Zipping runtime...
powershell -Command "Compress-Archive -Path '%DIST_DIR%\runtime\*' -DestinationPath '%OUT_DIR%\runtime-%VERSION%.zip' -Force"

echo Runtime zip created at %OUT_DIR%\runtime-%VERSION%.zip
echo Copying JAR...
copy "%DIST_DIR%\ventori-print-agent.jar" "%OUT_DIR%\ventori-print-agent-%VERSION%.jar"
