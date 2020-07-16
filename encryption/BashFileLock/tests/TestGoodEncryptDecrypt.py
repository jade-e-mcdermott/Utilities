import subprocess

subprocess.run("cd ../")

bashCommand = "../lock.sh -l TestPayloadA.txt"
subprocess.run(bashCommand)
