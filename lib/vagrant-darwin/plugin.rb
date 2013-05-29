require "vagrant"

if Vagrant::VERSION < "1.2.0"
  raise "The Vagrant Darwin plugin is only compatible with Vagrant 1.2+"
end

module VagrantPlugins
  module GuestDarwin
    class Plugin < Vagrant.plugin("2")
      name "Darwin guest"
      description "Darwin (OS X) guest support."

      guest("darwin") do
        require_relative "guest"
        Guest
      end

      guest_capability("darwin", "change_host_name") do
        require_relative "cap/change_host_name"
        Cap::ChangeHostName
      end

      guest_capability("darwin", "configure_networks") do
        require_relative "cap/configure_networks"
        Cap::ConfigureNetworks
      end

      guest_capability("darwin", "halt") do
        require_relative "cap/halt"
        Cap::Halt
      end
    end
  end
end
