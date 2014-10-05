class CreateDynamicReports < ActiveRecord::Migration
  def change
    create_table :dynamic_reports do |t|
      t.string :name
      t.text :sql

      t.timestamps
    end
  end
end
