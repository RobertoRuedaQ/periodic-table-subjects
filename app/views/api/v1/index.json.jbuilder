json.array! @subjects do |subject|
  json.(subject, :title, :short, :credits, :schedule, :campus, :category, :faculty, :code, :teacher, :description )
end