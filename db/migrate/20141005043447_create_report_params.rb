class CreateReportParams < ActiveRecord::Migration
  def change
    create_table :report_params do |t|
      t.references :dynamic_report, index: true
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
