#! /bin/bash
#bash wont search from same directory for security reasons. 
#So gotta explicitly tell it the script is in this directory(if you're in the same directory of course)
#So run script with ./file_name.sh


echo "curl_repo shell script starting..."
echo
echo
w
echo
echo "curling opower repos"
echo

REPOS_URL="https://api.github.com/users/opower/repos"

echo "outputting repos to file opower_repos.sh"
curl $REPOS_URL > ./opower_repos.sh
echo


