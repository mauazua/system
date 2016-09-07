User.where(email: 'marwyszynska@gmail.com').first_or_create { |u| u.password = 'testowe123' }
