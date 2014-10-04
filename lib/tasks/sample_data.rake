desc 'create sample data'
task :sample_data, :environment do
  puts 'start'
  User.transaction do
    User.destroy_all
    Faker::Config.locale = 'en-US'
    100.times do
      first_name = Faker::Name.first_name
      last_name = Faker::Name.last_name
      email = Faker::Internet.email(first_name + "." + last_name)
      birthday = (Faker::Business.credit_card_expiry_date).ago((20..50).to_a.sample.years)
      annual_income = Faker::Number.number(10)
      user = User.new(name: "#{first_name} #{last_name}", email: email, birthday: birthday, annual_income: annual_income)
      puts user.inspect
      user.save!
    end
  end
  puts 'end'
end