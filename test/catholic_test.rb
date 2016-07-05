require 'minitest_helper'
require 'catholic'

class CatholicTest < MiniTest::Test

  def test_new_objects_have_original_sin
    object = Object.new
    assert object.sin == 1, 'Your object was born without sin'
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

  def test_sin_can_accumulate
    o = Object.new
    o.sin += 3
    assert o.sin == 4, "Object cannot accumulate sin"
  end

  def test_numbers_can_sin
    skip("Pending solution for: RuntimeError: can't modify frozen Fixnum")
    assert 3.has_sin? == true, "Number is not able to have sin"
  end

  def test_you_cant_be_catholic_without_the_guilt
    o = Object.new
    assert o.class.included_modules.include?( Catholic::CripplingGuilt ), "Guilt not assumed"
  end

end
