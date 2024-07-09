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


# Specify the FSx OnTAP file system Management endpoint IP and SVM name below

$FSxManagementIP = '10.0.255.239'
$Username = 'fsxadmin'
$VserverName = 'svm01'


# Specify the Commands to Run in the Correct Order
# Now run commands to show above configurations are successful


$Command1 = "vserver vscan show -vserver $VserverName"
$Command2 = "vscan scanner-pool show -instance -vserver $VserverName"
$Command3 = "vserver vscan on-access-policy show -vserver $VserverName"
$Command4 = "vscan connection-status show"

# Login to the filesystem and run the Above Commands:

ssh $Username@$FSxManagementIP "$Command1;$Command2;$Command3;$Command4"
