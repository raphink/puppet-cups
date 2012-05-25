class cups::server {
  include cups

  package {[
    "cups-pdf",
    "cups-bsd",
    "foomatic-db-gutenprint",
    "gutenprint-locales",
    "hplip",
    "hplip-data",
    "hpijs-ppds",
    "hp-ppd",
    "openprinting-ppds",
    "openprinting-ppds-extra",
    "printfilters-ppd",
    "unpaper"
    ]:
    ensure => present, 
  }
}
