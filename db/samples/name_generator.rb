class NameGenerator
  def initialize
    @last_names = File.readlines('db/samples/last_name.txt').map(&:chomp!)
    @first_names = {}
    @first_names[:f] = File.readlines('db/samples/first_name_f.txt').map(&:chomp!)
    @first_names[:m] = File.readlines('db/samples/first_name_m.txt').map(&:chomp!)
  end

  def generate
    sex = [:f, :m].sample
    first_name = @first_names[sex].sample

    last_name = @last_names.sample
    switch_ending(last_name) if sex.eql?(:f)

    [first_name, last_name]
  end

  def switch_ending(last_name)
    last_name.gsub!(/ski/, 'ska')
    last_name.gsub!(/cki/, 'cka')
    last_name.gsub!(/dzki/, 'dzka')
  end
end
