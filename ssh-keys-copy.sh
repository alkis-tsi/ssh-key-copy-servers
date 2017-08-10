#!/bin/bash -xe
public_key='Enter your public key here'
for i in {01..n} # n-> number of hosts that the key should be added
do
  ssh -o StrictHostKeyChecking=no username@hostname${i}.domainname "echo ${public_key} >> ~/.ssh/authorized_keys" || true
  # eg. johndoe@webserver${i}.doe.org
done
