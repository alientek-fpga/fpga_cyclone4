#Quartus only
#This script is useful for cleaning up the quartus project
# unnecessary files nad directories
###
# Run the following command to change permissions of
# this 'cleanup' file if needed:
# chmod u+x cleanup.sh
###
# Remove directories/subdirectories

#find . -mindepth 1 -type d -exec rm -rf {} +
find . -type d  \( -name "*db" -o -name "greybox_tmp" \) -exec rm -rf {} +
find . -type f \( -name "*.ddb" -o \
                  -name "*.qws" -o \
                  -name "*.qdf" -o \
                  -name "PLLJ_PLLSPE_INFO.txt" \
                \) -exec rm -rf {} +
find . -type f -name "PLLJ_PLLSPE_INFO.txt" -exec rm -rf {} +
#remove back file
find . -type f -name "*.bak" -exec rm -rf {} +
find ./*/par/output_files  -type f ! -name '*.sof' -exec rm -rf {} +

