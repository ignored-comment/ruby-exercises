require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test
  def test_1
    account_balances = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    account_balances.each do |balance|
      all_zeros = false unless balance.zero?
    end
    assert_equal true, all_zeros
  end

  def test_2
    account_balances = {
      checking: 0,
      saving: 0,
      retirement_401k: 0,
      retirement_ira: 0,
    }
    all_zeros = true
    account_balances.each do |account, balance|
      if !balance.zero?
        all_zeros = false
      end
    end
    assert_equal true, all_zeros
  end

  def test_3
    # skip
    words = ["love", "hate", "fire", "bird", "call"]
    all_four_letters = true
    words.each do |word|
      # Your Code Here
      if !word.length == 4
        all_four_letters = false
      end
    end
    assert_equal true, all_four_letters
  end

  def test_4
    # skip
    words = {
      one: "love",
      two: "hate",
      three: "fire",
      four: "bird",
      five: "call"
    }
    all_four_letters = true
    words.each do |position, word|
      # Your Code Here
      all_four_letters = false unless word.length == 4
    end
    assert_equal true, all_four_letters
  end

  def test_5
    # skip
    statuses = [:busy, :busy, :busy]
    all_busy = true
    # Your Code Here
    statuses.each do |status|
    if !status == :busy
      all_busy = false
    end
  end

    assert_equal true, all_busy
  end

  def test_6
    # skip
    friend_status = {
      "Megan" => :busy,
      "Sarah" => :busy,
      "Duncan" => :busy,
    }
    all_busy = true
    # Your Code Here
    friend_status.each do |position, word|
      all_busy = false unless word == :busy
    end

    assert_equal true, all_busy
  end

  def test_7
    # skip
    all_five_digits = true
    zip_codes = [94381, 831, 50009, 36232, 8992, 89999, 11110]
    # Your Code Here
    zip_codes.each do |code|
      all_five_digits = false unless code.digits.count == 5
      end

    assert_equal false, all_five_digits
  end

  def test_8
    # skip
    zip_codes = {
      "Megan" => 94381,
      "Sarah" => 831,
      "Duncan" => 50009,
      "Raymart" => 36232,
      "Alec" => 89092,
      "Cameron" => 89999,
      "Joshua" => 11110
    }
    all_five_digits = true
    zip_codes.each do |key, value|
      all_five_digits = false unless value.digits.count == 5
    end

    assert_equal false, all_five_digits
  end

  def test_9
    # skip
    snacks = ["GARLIC PLANTAINS", "SNICKERDOODLES", "Pretzels"]
    # Your Code Here
    all_caps = true
    snacks.each do |snack|
      all_caps = false unless snack.upcase == true
    end
    assert_equal false, all_caps
  end

  def test_10
    # skip
    snacks = {
      savory: "GARLIC PLANTAINS",
      sweet: "SNICKERDOODLES",
      salty: "Pretzels"
    }
    # Your Code Here
    all_caps = true
    snacks.each do |key, value|
      all_caps = false unless value.upcase == true
    end
    assert_equal false, all_caps
  end
end
