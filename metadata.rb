name 'cookbook_xpbytes'
maintainer 'Derk-Jan Karrenbeld'
maintainer_email 'derk-jan@xpbytes.com'
license 'All Rights Reserved'
description 'Installs/Configures cookbook_xpbytes'
long_description 'Installs/Configures cookbook_xpbytes'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'deployer'
depends 'opsworks_ruby' # , '1.11.0'
depends 'packages', '~> 1.0.0'
depends 'apt', '< 7.0.0'
depends 'build-essential'
depends 'imagemagick'
depends 'git'
depends 'nodejs'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/xpbytes/cookbook.xpbytes.com/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/xpbytes/cookbook.xpbytes.com'
