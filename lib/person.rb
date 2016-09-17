module Person
  def full_name
    if first_name && last_name
      [first_name, last_name].join(' ')
    else
      email.split('@').first.split('.').map(&:capitalize).join(' ')
    end
  end
end
