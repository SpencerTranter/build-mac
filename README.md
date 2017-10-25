# build-mac

This shell script for a mac takes in two or more arguments, a zip file name and the directory name of a lambda. The script will then bash into a linux server (in this case aliased as blacktower), run an npm install, a permission change on a lambda build script and finally run the build script. The newly created zip file will then be copied back over to the same directory on the mac that ran this script.

Currently this script automatically copies over a config.json file to be zipped with the rest of the files. If any other files need to be copied over, a third argument can be provided with that file name.

This script was created because some npm packages are downloaded differently on mac than linux. This can cause a lambda function that is built in a mac environment to fail while it would succeed if built on linux.
