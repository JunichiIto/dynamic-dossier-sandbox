class DynamicDossierReport < Dossier::Report
  def sql
    report_name = options['report_name']
    DynamicReport.find_by_name(report_name).sql
  end
end