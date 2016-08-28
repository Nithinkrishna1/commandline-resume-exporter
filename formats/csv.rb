require 'csv'
class CSVexporter
  def initialize(content,values)
    @content=content
    @values=values
  end
  def write
  CSV.open("resume.csv", "w") do |csv|
    csv << @content
    csv << @values 
  end
  puts "generated resume.csv"
end
end
