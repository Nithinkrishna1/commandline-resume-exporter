require 'csv'
class To_csv
def exporter
  CSV.open("resume.csv", "w") do |csv|
    csv << $content
    csv << $values
  end
  puts "generated resume.csv"
end
end
