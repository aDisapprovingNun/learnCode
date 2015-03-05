#!/bin/bash
##################################################################
#: Date Created  : (December 30, 2014)
#: Author        : Daniel Griggs
#: Version       : 1.00
##################################################################

## How to handle input on $4
if [[ -z "$4" ]]; then
  action=0
else
  action=$4
fi

### GLOBAL VARIABLE BLOCK ###

### GLOBAL VARIABLE BLOCK ###

##
### GLOBAL FUNCTION BLOCK ###

### GLOBAL FUNCTION BLOCK ###
##

case ${action} in

0) # verify
echo "hello world"

exit 0
;;
1) # secure
echo "secure it"

exit 0
;;
2) # rollBack
echo "roll it back"

exit 0
;;
*)
echo "<result>test case input failed</result>"
exit 1
esac
