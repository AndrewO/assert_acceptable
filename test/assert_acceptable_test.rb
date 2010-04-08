require 'test/unit'
$:.unshift(File.dirname(__FILE__) + "/../lib")
require 'assert_acceptable'

require 'rubygems'
require 'shoulda'
require 'ruby-debug'

class AssertAcceptableTest < Test::Unit::TestCase
  context "A picture of a kitten with a guitar" do
    setup { @image_path = File.dirname(__FILE__) + "/guitar_kitteh.png"}
    
    should "contain a picture of a kitten with a guitar" do
      assert_acceptable(@image_path, "contain a picture of a kitten with a guitar")
    end
    
    should "be able to work without assertion text" do
      assert_acceptable(@image_path)
    end
  end
end