describe "spell_word.rb" do
  
  it "spells 'Georgia' correctly", points: 1 do
    # Un-require spell_word.rb
    spell_word = $".select{|r| r.include? 'spell_word.rb'}
    $".delete(spell_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("Georgia")
    response = /.?G.?\n.?e.?\n.?o.?\n.?r.?\n.?g.?\n.?i.?\n.?a.?\n/i
    
    # expect { require_relative("../../spell_word") }.to output(response).to_stdout
    output = with_captured_stdout { require_relative('../../spell_word')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter a word for me to spell:\\nG\\ne\\no\\nr\\ng\\ni\\na\\n', but was #{output}."

  end
end

describe "spell_word.rb" do
  
  it "spells 'Super' correctly", points: 1 do
    # Un-require spell_word.rb
    spell_word = $".select{|r| r.include? 'spell_word.rb'}
    $".delete(spell_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("Super")
    response = /.?S.?\n.?u.?\n.?p.?\n.?e.?\n.?r.?\n/i

    output = with_captured_stdout { require_relative('../../spell_word')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter a word for me to spell:\\nS\\nu\\np\\ne\\nr', but was #{output}."
  end
end


describe "letter_count.rb" do
  
  it "prints the letters and number of times the letters appear for the word 'levee'", points: 1 do
    # Un-require letter_count.rb
    letter_count = $".select{|r| r.include? 'letter_count.rb'}
    $".delete(letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("levee")
    
    response = /.?l appears 1 times.?\n.?e appears 3 times.?\n.?v appears 1 times.?\n.?e appears 3 times.?\n.?e appears 3 times.?\n/i

    output = with_captured_stdout { require_relative('../../letter_count')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter a word:\\nl appears 1 times\\ne appears 3 times\\nv appears 1 times\\ne appears 3 times\\ne appears 3 times\\n', but was #{output}."
  end
end

describe "letter_count.rb" do
  
  it "prints the letters and number of times the letters appear for the word 'loop'", points: 1 do
    # Un-require letter_count.rb
    letter_count = $".select{|r| r.include? 'letter_count.rb'}
    $".delete(letter_count.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("loop")
    
    response = /.?l appears 1 times.?\n.?o appears 2 times.?\n.?o appears 2 times.?\n.?p appears 1 times.?\n/i

    output = with_captured_stdout { require_relative('../../letter_count')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter a word:\\nl appears 1 times\\no appears 2 times\\no appears 2 times\\np appears 1 times\\n', but was #{output}."
  end
end

describe "even_word.rb" do
  
  it "prints the 'mountain' and 'pink' when the input is 'mountain pink vines'", points: 1 do
    # Un-require even_word.rb
    even_word = $".select{|r| r.include? 'even_word.rb'}
    $".delete(even_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("mountain pink vines")
    
    response = /.?mountain.?\n.?pink.?\n/i

    # expect { require_relative("../../even_word") }.to output(response).to_stdout
    output = with_captured_stdout { require_relative('../../even_word')} 
    output = "empty" if output.empty? 
    expect(output.match?(response)).to be(true),
      "Expected output to be 'Enter a list of words separated by spaces:\\nmountain\\npink\\n', but was #{output}."
  end
end

describe "even_word.rb" do
  
  it "prints nothing when the input is 'odd numbers squad'", points: 1 do
    # Un-require even_word.rb
    even_word = $".select{|r| r.include? 'even_word.rb'}
    $".delete(even_word.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("odd numbers squad")

    output = with_captured_stdout { require_relative('../../even_word')} 
    output = "empty" if output.empty?

    output_without_prompt = output.gsub(/.?Enter a list of words separated by spaces:.?/, "").chomp

    expect(output_without_prompt.length == 0).to be(true),
      "Expected output to be 'Enter a list of words separated by spaces:', but was #{output}."

  end
end

def with_captured_stdout
  original_stdout = $stdout  # capture previous value of $stdout
  $stdout = StringIO.new     # assign a string buffer to $stdout
  yield                      # perform the body of the user code
  $stdout.string             # return the contents of the string buffer
ensure
  $stdout = original_stdout  # restore $stdout to its previous value
end
