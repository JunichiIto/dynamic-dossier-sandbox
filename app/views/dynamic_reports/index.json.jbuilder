json.array!(@dynamic_reports) do |dynamic_report|
  json.extract! dynamic_report, :id, :name, :sql
  json.url dynamic_report_url(dynamic_report, format: :json)
end
