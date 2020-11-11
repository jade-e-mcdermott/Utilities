#! /bin/bash
if test $# -ne 2;
then 
  echo "Bad number of Arguments: 
        First give '-e' for encrypt or '-u' for unencrypt. Then give the name of one file to (un)encrypt. Will prompt for password."

else
  #Get the name of the file to operate on.
  targetFileName=$2

  #Read first argument:
  #  Encrypt on "-e" and unencrypt on "-u"
  if test $1 == "-e"
  then 
    #Lets encrypt it!

    #Append ".encrypt"
    encryptedName=`printf "$targetFileName.encrypt"`
    openssl aes-256-cbc -a -salt -in $targetFileName -out $encryptedName
    #Delete the original target file.
    rm $targetFileName
  elif test $1 == "-u"
  then
    #Lets Unencrypt it!
    
    #Remove ".encrypt"
    unencryptedName=`echo $targetFileName | sed 's/\.encrypt//g'`
    #Unencrypt it
    openssl aes-256-cbc -d -a -in $targetFileName -out $unencryptedName
    #Delete the encrypted file.
    rm $targetFileName

  else
    echo "bad first argument. Valid arguments are:
          -e: encrypt
          -u: Unencrypt"
  fi
 fi

