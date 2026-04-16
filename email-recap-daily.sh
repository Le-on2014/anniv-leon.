#!/bin/bash
# Récapitulatif email quotidien — lancé chaque matin à 07h00
cd /home/user/anniv-leon.
/opt/node22/bin/claude --print "/email-recap" 2>&1 >> /home/user/anniv-leon./email-recap.log
