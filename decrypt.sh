#!/bin/bash
echo $1 | openssl enc -aes-256-cbc -a -d -salt -pass pass:asdffdsa -pbkdf2
