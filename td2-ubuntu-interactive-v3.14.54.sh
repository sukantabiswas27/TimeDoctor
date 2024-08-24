
#!/bin/bash

UBUNTU="https://download.timedoctor.com/3.14.54/linux/ubuntu-18.04/interactive/timedoctor2-setup-3.14.54-linux-x86_64.run"

wget -O /tmp/timedoctor-$$.run $UBUNTU

if [ -e /tmp/timedoctor-$$.run ] ; then 
  chmod a+x /tmp/timedoctor-$$.run 
  /tmp/timedoctor-$$.run --nox11 -- ; retval=$?
  rm -fv /tmp/timedoctor-$$.run
  exit $retval
fi
exit 255