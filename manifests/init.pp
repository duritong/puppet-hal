#######################################
# hal module
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################


# modules_dir { "hal": }
class hal {
    include hal::base
}

class hal::base {
    package{hal:
        ensure => present,
    }

    service{haldaemon:
        ensure => running,
        enable => true,
        hasstatus => true,
        require => Package[hal],
    } 
}
