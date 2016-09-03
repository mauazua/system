require_relative '../samples/name_generator'

10.times do
  name = NameGenerator.new.generate
  Teacher.where(first_name: name.first, last_name: name.last).first_or_create! do |teacher|
    teacher.email = name.map(&:parameterize).join('.') + '@example.com'
  end
end

Teacher.all.each do |teacher|
  amount = (2..6).to_a.sample

  amount.times do
    if teacher.fields.size < amount
      field = Field.all.sample
      teacher.fields << field unless teacher.fields.include?(field)
    end
  end
end
