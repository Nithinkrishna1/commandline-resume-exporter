module Formats 
  def available_formats
    formats = Dir.glob("formats/*.rb")
  end

end
