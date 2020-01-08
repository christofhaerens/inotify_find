# inotify_find
find (and report) processes that have file watchers (inotify) in use for a particular user.

## usage
```
$ ./inotify_find [username]
```
If username is ommitted, the current user is used

## example output
```
% inotify-find.bash       
    18 /usr/lib/systemd/systemd
     2 /usr/bin/pulseaudio
     2 /usr/bin/dbus-daemon
     2 /usr/libexec/gnome-session-binary
     1 /usr/bin/dbus-daemon
    15 /usr/bin/gnome-shell
     8 ibus-daemon
     1 /usr/libexec/ibus-dconf
     1 /usr/libexec/ibus-extension-gtk3
     1 /usr/libexec/ibus-x11
     1 /usr/libexec/ibus-portal
     2 /usr/libexec/evolution-source-registry
     1 /usr/libexec/gvfs-udisks2-volume-monitor
     1 /usr/libexec/goa-daemon
     1 /usr/libexec/gvfs-afc-volume-monitor
     2 /usr/libexec/gsd-sound
    44 /usr/libexec/gsd-xsettings
     1 /usr/libexec/gsd-color
     1 /usr/libexec/gsd-housekeeping
    17 /usr/bin/gnome-software
     7 /usr/libexec/evolution-data-server/evolution-alarm-notify
     6 /usr/libexec/tracker-miner-apps
     0 /usr/libexec/tracker-miner-fs
     1 /usr/libexec/evolution-calendar-factory
     1 /usr/libexec/evolution-addressbook-factory
     1 /usr/libexec/ibus-engine-simple
     7 /usr/lib64/firefox/firefox
     7 /usr/lib64/thunderbird/thunderbird
     3 /usr/share/atom/atom --pid=9577 .
   281 /usr/share/atom/atom --type=renderer --no-sandbox --enable-experimental-web-platform-features --enable-features=SharedArrayBuffer --lang=en-US

Total = 436
```
