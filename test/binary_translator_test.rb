require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator'
require 'pry'

class BinaryTest < Minitest::Test

  def test_binary_exists
    bt = BinaryTranslator.new
    assert_instance_of BinaryTranslator , bt
  end

  def test_that_in_can_translate_a_letter
    bt = BinaryTranslator.new
    bt.translate("a")
    assert_equal "000001", bt.translate("a")
  end

  def test_it_can_translate_a_word

    bt = BinaryTranslator.new
    bt.translate("turing")
    #binding.pry
    assert_equal "010100010101010010001001001110000111", bt.translate("turing")
  end

  def test_it_can_translate_capital_letters
    skip
    bt = BinaryTranslator.new
    bt.translate("A")
    assert_equal "000001", bt.translate("A")
  end




end
