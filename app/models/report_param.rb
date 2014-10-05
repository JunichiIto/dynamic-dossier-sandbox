class ReportParam < ActiveRecord::Base
  extend Enumerize
  belongs_to :dynamic_report

  validates :name, :param_type, presence: true
  validates :name, uniqueness: { scope: :dynamic_report_id }

  enumerize :param_type, in: %i(string integer)
end
