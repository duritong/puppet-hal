#######################################
# hal module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# disable hal
class hal::disable inherits hal::base {
    Service[haldaemon]{
        ensure => stopped,
        enable => false,
    }
}
