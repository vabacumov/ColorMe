require 'Faker'

50.times do
  color = "#" + ("%06x" % (rand * 0xffffff))
  email = Faker::Internet.email
  password = Faker::Internet.password
  User.create(color: color, email: email, password: password)
end

