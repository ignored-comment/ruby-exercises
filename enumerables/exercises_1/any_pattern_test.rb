gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AnyPatternTest < Minitest::Test

  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    assert_equal true, has_zero
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      # Your code goes here
      number.zero?
    end
    assert_equal false, has_zero
  end

  def test_has_at_least_one_alice
    # skip
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    # Your code goes here
    names.each do |name|
      has_alice = true if name == "Alice"
    end
    assert_equal true, has_alice
  end

  def test_no_alices
    # skip
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    # Your code goes here
    has_alice = true
    names.each do |name|
      has_alice = false if name != "Alice"
    end
    assert_equal false, has_alice
  end

  def test_has_a_multi_word_phrase
    # skip
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    # Your code goes here
    has_multi_word_phrase = false
    phrases.each do |phrase|
      has_multi_word_phrase = true if phrase.include? " "
    end
    assert_equal true, has_multi_word_phrase
  end

  def test_no_monkeys
    # skip
    animals = ["elephant", "hippo", "jaguar", "python"]
    # Your code goes here
    has_monkeys = true
    animals.each do |animal|
      has_monkeys = false if animal != "monkey"
    end
    assert_equal false, has_monkeys
  end

  def test_no_multiples_of_five
    # skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    # Your code goes here
    multiples_of_5 = true
    numbers.each do |number|
      multiples_of_5 = false if number % 5 != 0
    end
    assert_equal false, multiples_of_5
  end

end
