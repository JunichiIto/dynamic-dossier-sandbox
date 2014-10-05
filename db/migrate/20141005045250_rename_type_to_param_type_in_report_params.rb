class RenameTypeToParamTypeInReportParams < ActiveRecord::Migration
  def change
    rename_column :report_params, :type, :param_type
  end
end
