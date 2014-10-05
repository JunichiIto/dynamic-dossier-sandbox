class DynamicDossierReport < Dossier::Report
  def sql
    dynamic_report.sql
  end

  def formatted_title
    dynamic_report.name
  end

  def report_params
    dynamic_report.report_params
  end

  def dynamic_report
    report_name = options['report_name']
    if @dynamic_report.blank?
      @dynamic_report = DynamicReport.find_by_name(report_name)
      @dynamic_report.report_params.each do |param|
        singleton_class.class_eval do
          define_method param.name do
            options[param.name]
          end
        end
      end
    end
    @dynamic_report
  end
end