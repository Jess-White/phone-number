class PhoneNumber

  DIGITS = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]

  def self.clean(string)
    output = []
    string_array = string.split("")
    string_array.each do |char|
      if DIGITS.include?(char)
        output << char
      end
    end 
    if output.length == 11 && output[0] == "1"
      output.shift
    end
    if output[0] == "0" || output[0] == "1"
      return nil
    elsif output[-7] == "0" || output[-7] == "1"
      return nil
    elsif output.length == 10
      return output.join
    end 
  end 

end 




