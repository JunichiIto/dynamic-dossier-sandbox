class ReportParam < ActiveRecord::Base
  belongs_to :dynamic_report

  validates :name, :param_type, presence: true
  validates :name, uniqueness: { scope: :dynamic_report_id }
end
