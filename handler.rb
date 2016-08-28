require 'require_all'
require_all 'formats'


class Handler
  def send_format(selected_format)
    begin
      Object.const_get("To_#{selected_format}").new.exporter
    end
 end
end
