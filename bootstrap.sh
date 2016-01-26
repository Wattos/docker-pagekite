#!/bin/bash
cat > /root/.pagekite.rc << EOF

###[ Current settings for pagekite.py v0.5.8a. ]#########
#
## NOTE: This file may be rewritten/reordered by pagekite.py.
#

##[ Default kite and account details ]##
kitename   = ${KITE_NAME}
kitesecret = ${KITE_SECRET}

##[ Front-end settings: use pagekite.net defaults ]##
defaults

##[ Back-ends and local services ]##
service_on  = http:@kitename                   : localhost:80      : @kitesecret

##[ Miscellaneous settings ]##
savefile = /root/.pagekite.rc

###[ End of pagekite.py configuration ]#########
END

EOF

exec python "$PAGE_KITE_BINARY" --nullui $@