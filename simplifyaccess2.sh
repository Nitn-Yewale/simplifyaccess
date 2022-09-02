#!/bin/bash
#
# simplifyaccess2
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


echo -e "\nMain Menu :

    [1] Books to read and IMP documents        [2] ASCII text documents
    
    [3] Google DOCS_SHEETS_SLIDES              [4] Open folder in GUI mode
 
    [5] Open mojo docs                         [6] Servers to login

    [e] EXIT
"

_response=
echo -n "Enter option number > "
read _response

case $_response in
    
    1) 
        echo -e "\nMenu for 'Books to read and IMP documents' : 

        1. Book1    2. Book2    3. Book3    4. Book4
        5. Book5    6. Book6

        e. Exit
        "
        _response1=
        echo -n "Enter option number > "
        read _response1

        declare -A _List_of_my_books

        _List_of_my_books=(

            ["1"]="xdg-open path_to_book1"
            ["2"]="xdg-open path_to_book2"
            ["3"]="xdg-open path_to_book3"
            ["4"]="xdg-open path_to_book4"
            ["5"]="xdg-open path_to_book5"
            ["6"]="xdg-open path_to_book6"
            ["e"]="exit 0"
            )

        response1=$(echo $_response1 | tr "," "\n")
        _opt_keys=${!_List_of_my_books[@]}

        for i in $response1
        do
            if grep -wq "$i" <<< "$_opt_keys"; then
                ${_List_of_my_books[$i]}
            else
                echo "Invalid option \"$i\" specified."
            fi
        done

        exit 0
        ;;

    2)
        echo -e "\nMenu for 'ASCII text documents' :

        1. doc1.txt     2. doc2.txt
        3. doc3.txt     4. doc4.txt

        e. Exit

        "
        _response2=
        echo -n "Enter option number > "
        read _response2

        declare -A _List_of_my_text_docs

        _List_of_my_text_docs=(

        ["1"]="xdg-open path_to_doc1"
        ["2"]="xdg-open path_to_doc2"
        ["3"]="xdg-open path_to_doc3"
        ["4"]="xdg-open path_to_doc4"
        ["e"]="exit 0"

        )
        
        response2=$(echo $_response2 | tr "," "\n")
        _opt_keys=${!_List_of_my_text_docs[@]}

        for i in $response2
        do
            if grep -wq "$i" <<< "$_opt_keys"; then
                ${_List_of_my_text_docs[$i]}
            else
                echo "Invalid option \"$i\" specified."
            fi
        done

        exit 0

        ;;

    3)
        echo -e "\nMenu for 'Google DOCS_SHEETS_SLIDES' :

        1. Shift_Schedule_Jan_2020      2. Shift_Schedule_Feb_2020
        3. Shift_Schedule_Mar_2020      4. Shift_Schedule_Apr_2020
        e. Exit

        "
        _response3=
        echo -n "Enter option number > "
        read _response3

        declare -A _List_of_my_google_docs_sheets_slides

        _List_of_my_google_docs_sheets_slides=(

        ["1"]="xdg-open <url for Shift_Schedule_Jan_2020>"
        ["2"]="xdg-open <url for Shift_Schedule_Feb_2020>"
        ["3"]="xdg-open <url for Shift_Schedule_Mar_2020>"
        ["4"]="xdg-open <url for Shift_Schedule_Apr_2020>"
        ["e"]="exit 0"

        )

        response3=$(echo $_response3 | tr "," "\n")
        _opt_keys=${!_List_of_my_google_docs_sheets_slides[@]}

        for i in $response3
        do
            if grep -wq "$i" <<< "$_opt_keys"; then
                ${_List_of_my_google_docs_sheets_slides[$i]}
            else
                echo "Invalid option \"$i\" specified."
            fi
        done

        exit 0

        ;;

    4)
        echo -e "\nMenu for 'Open folder in GUI mode' :

        1. Finance_documents    2. Bills
        e. Exit

        "
        _response4=
        echo -n "Enter option number > "
        read _response4

        declare -A _List_of_folders

        _List_of_folders=(

        ["1"]="xdg-open <path_to_folder_Finance_documents>"
        ["2"]="xdg-open <path_to_folder_Bills"
        ["e"]="exit 0"

        )

        response4=$(echo $_response4 | tr "," "\n")
        _opt_keys=${!_List_of_folders[@]}

        for i in $response4
        do
            if grep -wq "$i" <<< "$_opt_keys"; then
                ${_List_of_folders[$i]}
            else
                echo "Invalid option \"$i\" specified."
            fi
        done

        exit 0


        ;;
    5)
        echo -e "\nMenu for 'Mojo docs' :

        1. Associate Expectations and KPI's For CY20        2. Competencies
        e. Exit

        "
        _response5=
        echo -n "Enter option number for mojo docs > "
        read _response5

        declare -A _List_of_mojo_docs

        _List_of_mojo_docs=(

        ["1"]="xdg-open https://mojo.redhat.com/docs/DOC-1216652"
        ["2"]="xdg-open https://mojo.redhat.com/community/hr/competencies"
        ["e"]="exit 0"

        )

        response5=$(echo $_response5 | tr "," "\n")
        _opt_keys=${!_List_of_mojo_docs[@]}

        for i in $response5
        do
            if grep -wq "$i" <<< "$_opt_keys"; then
                ${_List_of_mojo_docs[$i]}
            else
                echo "Invalid option \"$i\" specified."
            fi
        done

        exit 0

        ;;
    
    6)
        echo -e "\nMenu for 'Servers to login' :

        1. Prod server          2. Test Server
        e. Exit 

        "

        _response6=
        echo -n "Enter option number > "
        read _response6

        declare -A _List_of_servers_to_login

        _List_of_servers_to_login=(

        ["1"]="ssh root@Prodserver_hostname_or_IP"
        ["2"]="ssh root@testserver_hostname_or_IP"
        ["e"]="exit 0"

        )

        response6=$(echo $_response6| tr "," "\n")
        _opt_keys=${!_List_of_servers_to_login[@]}

        for i in $response6
        do
            if grep -wq "$i" <<< "$_opt_keys"; then
                ${_List_of_servers_to_login[$i]}
            else
                echo "Invalid option \"$i\" specified."
            fi
        done

        exit 0

        ;;
    e)
        exit 0
    ;;

    *)
        echo -e "\nInvalid option '$_response'"
        exit 0
        ;;

esac

exit 0

