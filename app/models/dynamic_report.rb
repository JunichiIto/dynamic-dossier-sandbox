class DynamicReport < ActiveRecord::Base
  has_many :report_params, dependent: :destroy
  accepts_nested_attributes_for :report_params, allow_destroy: true

  validates :name, :sql, presence: true
  validates :name, uniqueness: true
end
