class Test::Unit::TestCase
  def assert_acceptable(image_path, msg = nil)
    ret = %x{#{File.dirname(__FILE__) + "/../bin/assert_acceptable"} #{image_path} "#{msg}"}
    assert_equal(0, ret.to_i, "User did not accept #{image_path}")
  end
end