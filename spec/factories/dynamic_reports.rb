# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dynamic_report do
    name "MyString"
    sql "MyText"
  end
end
