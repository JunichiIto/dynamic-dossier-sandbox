class UserAgeDistributionReport < Dossier::Report
  def sql
    <<-SQL
select strftime('%Y', birthday) as birth_year, count(*) as user_count
from users
group by
birth_year
order by
birth_year
    SQL
  end
end