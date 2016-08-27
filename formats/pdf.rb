require "prawn"
module Pdf
  def pdf_exporter
    Prawn::Document.generate("resume.pdf") do
      $content.each do |element| 
         text element
      end
      $values.each do |value|
        text value
      end
    end
  end
end
