# MIT No Attribution

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.

# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


# Please Specify the FSx OnTAP Filesystem, Antivirus Server and Active Directory Account Parameters Here

$FSxManagementIP = '10.0.255.239'
$Username = 'fsxadmin'
$VserverName = 'svm01'
$ScannerPoolName = 'SCANPOOL1'
$ScheduleScanTaskName = 'scheduledscan'

# Specify the Commands to Run in the Correct Order


$Command1 = "vserver vscan disable -vserver $VserverName"
$Command2 = "vserver vscan scanner-pool delete -scanner-pool $ScannerPoolName -vserver $VserverName"
$Command3 = "vserver vscan on-demand-task delete -task-name $ScheduleScanTaskName -vserver $VserverName" 


# Login to the Filesystem and run the Above Commands:

ssh $Username@$FSxManagementIP "$Command1;$Command2;$Command3"

