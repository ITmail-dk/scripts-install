#!/bin/bash
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo "      chmod permissions on default ssh files"
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo chmod 700 ~/.ssh

sudo chmod 644 ~/.ssh/id_rsa.pub

sudo chmod 600 ~/.ssh/id_rsa

sudo chmod 600 ~/.ssh/authorized_keys

sudo chmod 644 ~/.ssh/known_hosts

sudo chmod 600 ~/.ssh/identity

sudo chmod 644 ~/.ssh/identity.pub

sudo chmod 600 ~/.ssh/config