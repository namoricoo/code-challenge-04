# person information class
class PersonInformation
  attr_accessor :person_info_hash
  def initialize
    @prefix_hash = { 'Ms.' => 1, 'Mr.' => 2, 'Miss' => 3 }
    initialize_person_hash
  end

  def initialize_person_hash
    @person_info_hash = {}
    @person_info_hash['prefix'] = ''
    @person_info_hash['first_name'] = ''
    @person_info_hash['middle_name'] = ''
    @person_info_hash['last_name'] = ''
    @person_info_hash['suffix'] = ''
    @person_info_hash['phone_number'] = ''
    @person_info_hash['extension'] = ''
  end

  def set_prefix(prefix)
    @person_info_hash['prefix'] = prefix
  end

  def set_first_name(first_name)
    @person_info_hash['first_name'] = first_name
  end

  def set_middle_name(middle_name)
    @person_info_hash['middle_name'] = middle_name
  end

  def set_last_name(last_name)
    @person_info_hash['last_name'] = last_name
  end

  def set_suffix(suffix)
    @person_info_hash['suffix'] = suffix
  end

  def set_phone_number(phone_number)
    @person_info_hash['phone_number'] = phone_number
  end

  def set_extension(extension)
    @person_info_hash['extension'] = extension
  end

  def get_prefix
    @person_info_hash['prefix']
  end

  def get_first_name
    @person_info_hash['first_name']
  end

  def get_middle_name
    @person_info_hash['middle_name']
  end

  def get_last_name
    @person_info_hash['last_name']
  end

  def get_suffix
    @person_info_hash['suffix']
  end

  def get_phone_number
    @person_info_hash['phone_number']
  end

  def get_extensionr
    @person_info_hash['extension']
  end

  def formated_cvs_values
    csv_array = []
    @person_info_hash.each do | key, value |
      csv_array << value
    end
    csv_array
  end

  def is_prefix?(text_input)
    if @prefix_hash[text_input].nil?
      false
    else
      true
    end
  end
end
