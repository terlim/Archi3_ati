#!/bin/sh

sensors | grep temp1 | awk '{print substr($2, 2, length($2))}'
