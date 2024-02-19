#!/bin/bash
echo $1 | openssl enc -aes-256-cbc -a -salt -pass pass:asdffdsa -pbkdf2
