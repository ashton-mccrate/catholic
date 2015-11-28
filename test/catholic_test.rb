require 'minitest_helper'
require 'catholic'

class CatholicTest < MiniTest::Test

  def test_new_objects_have_original_sin
    object = Object.new
    assert object.sin, 'Your object was born without sin'
  end

  def test_has_sin?
    assert Object.new.has_sin?, 'Object has no sin'
  end

  def test_repenting_absolves_sin
    o = Object.new
    o.repent
    assert o.has_sin? == false, 'Repenting did not absolve object of its sin'
  end

  def test_progeny_inherits_sins_of_the_father
    a = Array.new
    assert a.sin, "Your object's progeny didn't inherit the iniquity of its father."
  end

end
