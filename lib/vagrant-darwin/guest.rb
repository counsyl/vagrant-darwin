require "vagrant"

module VagrantPlugins
  module GuestDarwin
    class Guest < Vagrant.plugin("2", :guest)
      def detect?(machine)
        machine.communicate.test("uname -s | grep 'Darwin'")
      end
    end
  end
end
