#!/bin/bash
lynx -dump "https://www.google.com/search?num=500&q=site:"$1"+ext:"$2"" | grep ".$2" |cut -d "=" -f2 | egrep -v "site|google" | sed s''/...$//''g


