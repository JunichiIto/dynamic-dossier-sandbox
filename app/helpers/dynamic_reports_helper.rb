module DynamicReportsHelper
  def dynamic_report_result_path(dynamic_report)
    dossier_report_path(options: { report_name: dynamic_report.name }, report: 'dynamic_dossier')
  end
end