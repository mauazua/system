require_relative 'db/samples/name_generator'

teachers = 10.times do
  name = NameGenerator.new.generate
  Teacher.where(first_name: name.first, last_name: name.last).first_or_create! do |teacher|
    teacher.email = name.map(&:parameterize).join('.') + '@example.com'
  end
end

teachers.each do |teacher|
  2.times { teacher.fields << Field.all.sample }
end
