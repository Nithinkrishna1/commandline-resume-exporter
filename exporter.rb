require 'require_all'
require_all 'formats'


class Exporter
  def export(selected_format,content,values)
     Object.const_get("#{selected_format.upcase}exporter").new(content,values).write
 end
end
