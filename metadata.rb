name             'php-modules'
maintainer       'OurTownRentals.com'
maintainer_email 'evan@ourtownrentals.com'
license          'Apache 2.0'
description      'Installs several PHP modules.'
version          '0.0.0'

supports 'Ubuntu', '14.04'

recipe 'php-modules::default', 'Installs PHP modules.'

depends 'php', '~> 1.5.0'
depends 'php-ioncube', '~> 0.2.1'

attribute 'php-modules/modules',
          display_name: 'PHP modules',
          description: 'PHP modules to install and enable.',
          type: 'array',
          recipes: ['php-modules::default'],
          default: {}
