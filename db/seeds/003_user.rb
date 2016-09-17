require_relative '../samples/name_generator'

User.where(email: 'marwyszynska@gmail.com').first_or_create { |u| u.password = 'testowe123' }

50.times do
  name = NameGenerator.new.generate
  User.where(first_name: name.first, last_name: name.last).first_or_create! do |user|
    user.password = 'randomrandom'
    user.password_confirmation = 'randomrandom'
    user.email = name.map(&:parameterize).join('.') + '@example.com'
  end
end

User.all.each do |user|
  amount = (1..3).to_a.sample

  amount.times do
    if user.fields.size < amount
      field = Field.all.sample
      user.fields << field unless user.fields.include?(field)
    end
  end
end
