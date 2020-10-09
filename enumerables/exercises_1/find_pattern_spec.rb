RSpec.describe "#find pattern" do
  it "find first seven letter word" do
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    expect(found).to eq("unicorn")
  end

  it "no waldo" do
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      # Your code goes here
    end
    expect(found).to eq(nil)
  end

  xit "find waldo" do
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
    # Your code goes here
    expect(found).to eq("waldo")
  end

  xit "cannot find 3 letter words" do
    words = ["piglet", "porridge", "bear", "blueberry"]
    # Your code goes here
    expect(found).to eq(nil)
  end

  xit "find 13" do
    numbers = [2, 13, 19, 8, 3, 27]
    # Your code goes here
    expect(found).to eq(13)
  end

  xit "find first even number" do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your code goes here
    expect(found).to eq(10)
  end

  xit "find first multiple of 3" do
    numbers = [2, 8, 9, 27, 24, 5]
    # Your code goes here
    expect(found).to eq(9)
  end

  xit "find first word starting with q" do
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    # Your code goes here
    expect(found).to eq("quill")
  end

  xit "find first word ending with er" do
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    # Your code goes here
    expect(found).to eq("finger")
  end

  xit "find first number greater than 20" do
    numbers = [1, 8, 19, 21, 29, 31, 34]
    # Your code goes here
    expect(found).to eq(21)
  end
end