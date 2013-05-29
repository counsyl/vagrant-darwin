module VagrantPlugins
  module GuestDarwin
    module Cap
      class ConfigureNetworks
        def self.configure_networks(machine, networks)
          unless networks.empty?
            # Don't support custom networking -- yet.
            raise Vagrant::Errors::UnimplementedProviderAction
          end
        end
      end
    end
  end
end
