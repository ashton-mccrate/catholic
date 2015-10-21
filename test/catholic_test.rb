require 'minitest_helper'
require 'catholic'

class CatholicTest < MiniTest::Test

  def test_has_sin?
    assert Object.new.has_sin?
  end

end
