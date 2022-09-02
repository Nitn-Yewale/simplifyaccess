#!/bin/bash
#
# simplifyaccess1
#
#####################################################################################
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#    General Public License <gnu.org/licenses/gpl.html> for more details.
#
#
#####################################################################################
#
# Author : Nitin U. Yewale <nyewale@redhat.com>
#
#####################################################################################
#


echo -e "\nMenu :

 - Books to read and IMP documents
    1. BOOK-NAME1
    2. BOOK-NAME2

- ASCII text documents
    3. TEXT_DOC1

 - RHEL Documentation
    4. RHEL8 Multipath documentation - from Portal

 - Google DOCS_SHEETS_SLIDES
    5. Report_Apr2020
    6. Report_May2020

    7. P+D Doc

- Open folder in GUI mode
    8. MyFolder

    e. EXIT
"

_response=
echo -n "Enter the number for which corresponding action needs to be performed > "
read _response


declare -A _actions_to_perform
_actions_to_perform=(

# PDF documents could be opened with the command xdg-open

["1"]="xdg-open /NotBackedUp/Personal/pdf_file1"
["2"]="xdg-open /NotBackedUp/Personal/pdf_file2"

# For opening text documents as well we could use xdg-open command. If we try to use
# the text editors then the terminal from where the script is run, will not get closed until this text file is closed.
# You could define your preferred text editor to open text files

["3"]="xdg-open /NotBackedUp/top/configuration_file.txt"

# Google docs/sheets/slides and URLs could be open by browser commands or with the command xdg-open
# basically anything that opens in browser

["4"]="google-chrome --new-window https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html-single/configuring_device_mapper_multipath/index"

["5"]="xdg-open URL for  Report_Apr2020"
["6"]="xdg-open URL for  Report_May2020"
["7"]="xdg-open URL for P+D doc"

# Login to servers (Warning - script session will not close unless you logout of the server)
["6"]="ssh root@server1_hostname_or_IP"
["7"]="ssh root@server2_hostname_or_IP"

# Open Folders
["8"]="xdg-open /home/user_name/directory_name"

# EXIT
["e"]="exit 0"

	)

response=$(echo $_response | tr "," "\n")

_opt_keys=${!_actions_to_perform[@]}

for i in $response
  do
  	if grep -wq "$i" <<< "$_opt_keys"; then
    	${_actions_to_perform[$i]}
    else
    	echo -e "Invalid option \"$i\" specified."
    fi
  done

exit 0
