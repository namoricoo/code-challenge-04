# code challenge 04 class
class CodeChallenge04
  def initialize
    @prefix_hash = { 'Ms.' => 1, 'Mr.' => 2, 'Miss' => 3 }
  end

  def is_prefix?(text_input)
    if @prefix_hash[text_input].nil?
      false
    else
      true
    end
  end
end
