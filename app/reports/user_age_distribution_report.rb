class UserAgeDistributionReport < Dossier::Report
  def sql
    <<-SQL
select birthday from users
    SQL
  end
end