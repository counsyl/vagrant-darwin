vagrant-darwin
==============

This is a [Vagrant](http://www.vagrantup.com/) [plugin](http://docs.vagrantup.com/v2/plugins/index.html)
that adds Darwin (OS X) guest support.  This requires the commercial
[Vagrant VMware Fusion provider plugin](http://www.vagrantup.com/vmware) -- VirtualBox
does not support OS X guests.

To install this plugin, first build the gem package from within this directory:

    $ gem build vagrant-darwin.gemspec

This should create a gem file that includes the version in the file name.
Next, have Vagrant install this gem by running:

    $ vagrant plugin install `ls -1 -r *.gem | head -n 1`

The `ls` invocation makes it so the latest version is installed if multiple
gems exist.
