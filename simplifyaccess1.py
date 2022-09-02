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
# Author / suggestions : Nitin U. Yewale <nyewale@redhat.com>
#
#####################################################################################
#

import os

print ("\n\t Session recordings : \n")

sessionrecordings =	[

# Instructions : for user
# Fill the data in the format
# ["number", "alias", "command"]

["1", "NVMeoFC",
"xdg-open https://drive.google.com/file/d/12odjIg3O3KZvIpxqc-pAbnGut6zj9_qV/view?ts=60492da9"],
["2", "Oracle Tuning", "xdg-open https://drive.google.com/file/d/1-FJmGYcRoLEetLkSkA8Tih-Vd10cRqEj/view"],

["\n\t  e", "exit", "exit"]

]


for x in range(len(sessionrecordings)):
	print("\t  {}.  \t {}".format(sessionrecordings[x][0], sessionrecordings[x][1]))

try:
	val = input("\nEnter your value: ")
except KeyboardInterrupt:
	print("\n Keyboard Interrupt..")
	exit(0)

if val == "e":
	exit(0)

def search(list, n):
	global v
	for i in range(len(list)):
		if list[i][0] == n:
			v = i
			return True
	return False

if search(sessionrecordings, val):
	os.system(sessionrecordings[v][2])
else :
	print("Invalid Input ..")
