require 'csv'
module CommaSeparatedValues
def csv_exporter(selected_format)
  CSV.open("resume.csv", "w") do |csv|
    csv << $content
    csv << $values
  end
end
end
