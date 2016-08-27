require 'csv'
module CommaSeparatedValues
def to_csv
  CSV.open("resume.csv", "w") do |csv|
    csv << $content
    csv << $values
  end
  puts "generated resume.csv"
end
end
