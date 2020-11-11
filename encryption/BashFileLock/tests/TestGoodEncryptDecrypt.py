import subprocess

subprocess.run("cd ../")

bashCommand = "../encrypt.sh -l TestPayloadA.txt"
subprocess.run(bashCommand)
