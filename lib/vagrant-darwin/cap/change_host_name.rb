module VagrantPlugins
  module GuestDarwin
    module Cap
      class ChangeHostName
        def self.change_host_name(machine, name)
          machine.communicate.sudo("scutil --set ComputerName #{name.split('.')[0]}")
          machine.communicate.sudo("scutil --set HostName #{name}")
        end
      end
    end
  end
end
