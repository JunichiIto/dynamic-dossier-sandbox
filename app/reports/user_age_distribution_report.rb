class UserAgeDistributionReport < Dossier::Report
  def sql
    <<-SQL
select strftime('%Y', birthday) as birth_year, count(*) as user_count
from users
where
annual_income > :annual_income_greater_than
group by
birth_year
order by
birth_year
    SQL
  end

  def annual_income_greater_than
    options[:annual_income_greater_than].to_i
  end
end