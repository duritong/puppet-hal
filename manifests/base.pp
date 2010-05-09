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
