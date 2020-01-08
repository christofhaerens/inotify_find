#!/bin/bash
USER=$1
if [ "x$USER" == "x" ] ; then
  set -e
  USER=$(whoami)
fi
set +e
total=0
for p in $(find /proc/*/fd -user "$USER" -lname anon_inode:inotify 2>/dev/null | cut -d / -f 3 | sort -u) ; do
  cmdline=$(cat /proc/$p/cmdline | strings | head -1)
  count=$(find /proc/$p/fd -user "$USER" -lname anon_inode:inotify -printf '%hinfo/%f\n' 2>/dev/null | xargs cat |grep -c '^inotify')
  total=$(( $total + $count ))
  printf "%6d %s\n" "$count" "$cmdline"
done
printf "\nTotal = %d\n" $total
