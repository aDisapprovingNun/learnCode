Disclaimer: I am throwing you all into the fire with this one.
This will probably take some time and tinkering so don't feel bad at all if you don't solve it in 15 minutes.
P.S. these kinds of problems are what I solve all the time.  And this has really happened.

#
# Scenario: technical user had added himself to the sudoers file
# in a way that allows him to run any command without entering a password at all.
# He has legitimate use of sudo so we only want to correct the 'without a password' part.  Everything else is fine
#
# Also assume that he told his buddies (and they tell two friends..) how to do it (and THEY tell two friends...)
# so there are now 150+ machines that need fixing.

--> Make a script that will comment out the ability for the user that is currently logged in to sudo without a password.

Make sure your regex matches ONLY what you are looking for
there are lots of cases of legitimate sudo in this user group.

Best practice is to simply comment out the offending pieces.

### Extra challenge - Build a second script that will check if a fix needs to be run and has no ability to change anything.
(this would be a capser extension attribute that would feed a smart group.  Fix would only run on that smart group in production)
<--


I have attached a sudoers file in this folder for the exercise. (real one is /etc/sudoers DONT EDIT)

if you don't listen to me, edit it anyway, and lock yourself out of sudo....
single user boot and edit it back.  make sure the line below is not commented
%admin	ALL=(ALL) ALL
just save the changes and regular boot.  everything should be fine




###                                ###
### clues / background information ###
###                                ###
1.Install the atom editor from github and then get the following packages:
  linter
  linter-shellcheck
  autocomplete-plus (nice, not required)
2.Install shellcheck from brew
  http://brew.sh
  brew install shellcheck
3.Configure linter-shellcheck package in atom with path to shellcheck exe.

now you have syntax highlighting and it will tell you what you are doing wrong
You will learn a LOT from just the error messages and best practice it shows you.
worth the hasssle to install for sure

## google the crap out of everything.
any result with jamfnation.jamfsoftware.com or http://www.tldp.org
are excellent resources


## the sed command will be your friend for this.
  sed -i -backup '/^%admin/s/^/#/g' $sudoerFile
  what does this do and why does it work?
regex matching '^someText' will ONLY match if someText is at the start of the line

regex is your best friend going forward... just bite the bullet and learn the syntax

I almost always make input $4 do something useful so i can use the script again for something in the future.  example) for this script if $4 is empty grab the GUI user, otherwise use the username from $4 and don't worry about GUI user.
