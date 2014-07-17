name             'php-modules'
maintainer       'OurTownRentals.com'
maintainer_email 'evan@ourtownrentals.com'
license          'All rights reserved'
description      'Installs several PHP modules.'
version          '0.0.0'

supports 'Ubuntu', '14.04'

recipe 'php-modules::default', 'Installs PHP modules.'

depends 'php', '~> 1.4.6'

attribute 'php-modules/modules',
          display_name: 'PHP modules',
          description: 'PHP modules to install and enable.',
          type: 'array',
          recipes: ['php-modules::default'],
          default: {}
