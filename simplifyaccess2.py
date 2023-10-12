# simplifyaccess2
#
##############################################################################
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
##############################################################################
#
# Author / suggestions : Nitin U. Yewale <nyewale@redhat.com>
#
##############################################################################
#

import os


def search(list, n):
	global v
	for i in range(len(list)):
		if list[i][0] == n:
			v = i
			return True
	return False


# [1] Definitions represent folders. To add a new folder,
# add new definitions similar to below

def list1():

	# name describing the list
	print("\nupstream github repos\n")

	list1 = [
	["1", "upstream_sos",
		"xdg-open https://github.com/sosreport/sos"],
	["2", "upstream_systeminfo",
		"xdg-open https://github.com/NitinYewale/systeminfo"],
	["e", "exit", "exit"]
	]

	for x in range(len(list1)):
		print("\t {}. \t{}".format(list1[x][0], list1[x][1]))

	try:
		val = input("\nEnter your value: ")
	except KeyboardInterrupt:
		print("\n Keyboard Interrupt..")
		exit(0)

	if val == "e":
		exit(0)

	args = val.split(",")

	for a in args:
		if search(list1, a):
			os.system(list1[v][2])
		else:
			print("\nInvalid Input.. {} \n ".format(a))


def list2():

	#name describing the list
	print("kernel subsystem documentation")
	list2 = [
	["1", "SCSI subsystem documentation",
		"xdg-open https://docs.kernel.org/scsi/index.html"],
	["2", "Filesystems in the Linux kernel", "xdg-open https://docs.kernel.org/filesystems/index.html"],

	["e", "exit", "exit"]
	]

	for x in range(len(list2)):
		print("\t {}. \t{}".format(list2[x][0], list2[x][1]))

	try:
		val = input("\nEnter your value: ")
	except KeyboardInterrupt:
		print("\n Keyboard Interrupt..")
		exit(0)

	if val == "e":
		exit(0)

	args = val.split(",")

	for a in args:
		if search(list2, a):
			os.system(list2[v][2])
		else:
			print("\nInvalid Input.. {} \n ".format(a))


print("\nAvailable lists : \n")

# [2] New definition names to be added here
print("\t 1. upstream_repos    2. kernel_subsystem_documentation ")

print("\t e. exit")

try:
	val = input("\nEnter your value: ")
except KeyboardInterrupt:
	print("\n Keyboard Interrupt..")
	exit(0)

if val == "e":
	exit(0)

# [3] Create new elif stanza for any new definition
if val == "1" or val == "upstream_repos":
	list1()
elif val == "2" or val == "kernel_subsystem_documentation":
	list2()
else:
	print("Invalid input... {}\n".format(val))
