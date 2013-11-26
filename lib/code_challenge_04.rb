# code challenge 04 class
class CodeChallenge04
  def initialize
    @prefix_hash = { 'Ms.' => 1 }
  end

  def is_prefix?(text_input)
    puts "Empty= #{@prefix_hash[text_input]}"
    if @prefix_hash[text_input].nil?
      false
    else
      true
    end
  end
end
