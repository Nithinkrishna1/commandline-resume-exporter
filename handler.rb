require_relative 'formats/csv'


class Handler
  include CommaSeparatedValues
  def send_format(selected_format)
    if selected_format =='csv'
      to_csv
    else
      puts "selected format not available"
    end  
  end
end
