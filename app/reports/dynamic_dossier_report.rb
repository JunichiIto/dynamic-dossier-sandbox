class DynamicDossierReport < Dossier::Report
  def sql
    dynamic_report.sql
  end

  def formatted_title
    dynamic_report.name
  end

  def dynamic_report
    report_name = options['report_name']
    @dynamic_report ||= DynamicReport.find_by_name(report_name)
  end
end