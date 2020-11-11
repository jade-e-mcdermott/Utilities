# encrypt.sh
Encrypts the contents of a file. -e encrypts the file, -u will unencrypt it.
Adds a ".encrypt" extension to encrypted files.

## Example
`cd tests`
Confirm the payload content.
`cat TestPayloadB.txt`
Call the encrypt script.
`../encrypt.sh -e TestPayloadB.txt`
At this point a password will be prompted for interactively, in addition to password confirmation.
Then confirm contents are encrypted.
`cat TestPayloadB.txt`
Then decrypt
`../encrypt.sh -u TestPayloadB.txt.encrypt`
confirm contents are decrypted
`cat TestPayloadB.txt`