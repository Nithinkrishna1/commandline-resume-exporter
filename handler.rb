require_relative 'formats/csv'
require_relative 'formats/pdf'
module Handler
  include Pdf
  include CommaSeparatedValues
  def send_format(selected_format)
    if selected_format =='csv'
      csv_exporter(selected_format)
    elsif selected_format =='pdf'
      pdf_exporter
    else
      puts "selected format not available"
    end  
  end
end
