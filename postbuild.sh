#!/bin/bash
#install gritty(terminal)
npm i gritty
#install heroku cli
mkdir bin
cd bin
wget -q https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz -O heroku.tar.gz
tar -xzf heroku.tar.gz
rm -f heroku.tar.gz
#Set netrc
cd ../

if [ -n "$NETRC_MACHINE_1" ] && [ -n "$NETRC_LOGIN_1" ] && [ -n "$NETRC_PASSWORD_1" ] ; then
    echo machine $NETRC_MACHINE_1 >> .netrc
    echo login $NETRC_LOGIN_1 >> .netrc
    echo password $NETRC_PASSWORD_1 >> .netrc
fi
if [ -n "$NETRC_MACHINE_2" ] && [ -n "$NETRC_LOGIN_2" ] && [ -n "$NETRC_PASSWORD_2" ] ; then
    echo machine $NETRC_MACHINE_2 >> .netrc
    echo login $NETRC_LOGIN_2 >> .netrc
    echo password $NETRC_PASSWORD_2 >> .netrc
fi
if [ -n "$NETRC_MACHINE_3" ] && [ -n "$NETRC_LOGIN_3" ] && [ -n "$NETRC_PASSWORD_3" ] ; then
    echo machine $NETRC_MACHINE_3 >> .netrc
    echo login $NETRC_LOGIN_3 >> .netrc
    echo password $NETRC_PASSWORD_3 >> .netrc
fi