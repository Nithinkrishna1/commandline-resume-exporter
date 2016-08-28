class Formats 
  def available_formats
    Dir.glob("formats/*.rb")
  end

end 
