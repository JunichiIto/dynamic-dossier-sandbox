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
            if param.param_type.string?
              options[param.name].to_s
            elsif param.param_type.integer?
              options[param.name].to_i
            else
              raise "Unknown param type: #{param.param_type}"
            end
          end
        end
      end
    end
    @dynamic_report
  end
end