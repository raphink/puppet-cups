class cups {

  package {"cups":
    ensure => present,
  }

  service {"cups":
    ensure  => running,
    pattern => "cupsd",
    enable  => true,
    require => Package["cups"],
  }

  augeas::lens { 'cups':
    lens_source => 'puppet:///modules/cups/lenses/cups.aug',
    test_source => 'puppet:///modules/cups/lenses/test_cups.aug',
  }
}
