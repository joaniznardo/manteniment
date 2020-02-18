#!/bin/bash
for i in $(awk '{ print $2}' get_ips.txt); do wakeonlan $i; done
