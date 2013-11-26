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

  def format_phone_number(phone_number)
    phone_number = remove_phone_number_format(phone_number)
    if is_numeric?(phone_number) && (phone_number.length == 10)
      format_areacode_and_number_into_hash(phone_number)
    elsif is_numeric?(phone_number) && (phone_number.length == 11)
      phone_number = phone_number.slice(1..phone_number.length)
      format_areacode_and_number_into_hash(phone_number)
    elsif /x/ =~ phone_number
      format_number_with_extension(phone_number)
    end
  end

  def remove_phone_number_format(phone_number)
    phone_number = phone_number.gsub('(', '')
    phone_number = phone_number.gsub(')', '')
    phone_number = phone_number.gsub('-', '')
    phone_number = phone_number.gsub('.', '')
    phone_number.gsub(' ', '')
  end

  def format_areacode_and_number_into_hash(phone_number)
    phone_number_hash = { phone_number: '', extension: '' }
    phone_number_hash[:phone_number] = set_phone_number_format(phone_number)
    phone_number_hash
  end

  def set_phone_number_format(phone_number)
    phone_number = phone_number.insert(0, '(')
    phone_number = phone_number.insert(4, ')')
    phone_number.insert(8, '-')
  end

  def is_numeric?(input)
    /^0|[1-9]\d*$/ =~ input
  end

  def is_phone_number?(input)
    phone_number = remove_phone_number_format(input)
    if  /^0|[1-9]\d*$/ =~ phone_number
      true
    else
      false
    end
  end
end
