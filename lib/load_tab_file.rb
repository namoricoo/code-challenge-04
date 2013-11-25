# load tab separated values into an array.
class LoadTabFile
  def initialize(file_name)
    file_relative_path = File.dirname(__FILE__)
    @file_relative_path_and_name = "#{file_relative_path}/#{file_name}"
  end

  def read_file_into_array
    input_array = []
    File.open(@file_relative_path_and_name, 'r') do |file|
      loop do
        data_in_line = file.gets
        break unless data_in_line == nil?
        input_array << data_in_line
      end
    end
    input_array
  end
end
