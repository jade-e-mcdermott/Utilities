#! /bin/bash

# Start a simple disposable file server for quickly 
# moving files between computers on the local network.
# Not terribly secure. Good for one-off stuff only. Close it when you are done.
# Args:
# Pass in the path of the directory you want the file server to serve.

# https://book.pythontips.com/en/latest/one_liners.html

pythonPath='python3'
pathToServe=$1
cd $pathToServer
# Show the current IP before launching the server
echo "Displaying local machines IP address:"
ip addr show

echo "Starting File server:"
$pythonPath -m http.server