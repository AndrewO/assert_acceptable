module AssertAcceptable
  class Acceptor
    class << self
      def for_system
        ShoesAcceptor
      end
    end

    attr_reader :resource_path, :assertion

    def initialize(resource_path, assertion = nil)
      @resource_path = resource_path
      @assertion = assertion
    end
    
    def acceptable?
      raise "Must implement #{self.class.name}#acceptable?"
    end
  end
  
  class ShoesAcceptor < Acceptor
    def acceptable?
      # Can't get Shoes to handle input arguments correctly.  Skipping for now
      # output = %x{#{shoes_path} #{acceptor_path} -- #{File.expand_path(resource_path)} \"#{assertion || ""}\"}
      output = %x{#{shoes_path} #{acceptor_path} -- #{File.expand_path(resource_path)}}
      output.to_i == 1
    end
    
    private
    def shoes_path
      # TODO: make more general
      ENV["SHOES_PATH"] || "/Applications/Shoes.app/Contents/MacOS/shoes-launch"
    end
    
    def acceptor_path
      File.expand_path(File.dirname(__FILE__) + "/../../bin/shoes/acceptor.rb")
    end
  end
end
