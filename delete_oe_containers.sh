#!/bin/bash

sudo docker ps | cut -f1 -d" " | while read id; do sudo docker stop $id; sudo docker rm $id; done

