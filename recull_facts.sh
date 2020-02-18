ansible all -m setup -a 'gather_subset=!all,!min,network' --tree /tmp/facts 
