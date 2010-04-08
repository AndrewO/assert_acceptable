$:.unshift(File.dirname(__FILE__))
require "assert_acceptable"
require "assert_acceptable/acceptor"

module AssertAcceptable
  module TestUnit
    def assert_acceptable(resource_path, assertion = "look right")
      acceptor = AssertAcceptable::Acceptor.for_system.new(resource_path, assertion)
      assert acceptor.acceptable?, "User said that #{resource_path} did not #{assertion}."
    end
  end
end

class Test::Unit::TestCase
  include AssertAcceptable::TestUnit
end