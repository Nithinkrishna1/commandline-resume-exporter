require_relative 'formats'
require_relative 'exporter'

class Resume
  def user_details 
    content = ["name","age","total_cgpa"]
    values =[]
    content.each do |item|
      puts "enter the #{item}"
      values.push(gets.chomp) 
    end
    available_formats(content,values)
  end
  
  def available_formats(content,values)
    puts Formats.new.available_formats
    puts "select the format to export"
    selected_format = gets.chomp
    Exporter.new.export(selected_format,content,values)
    
  end
end

res1= Resume.new
res1.user_details

