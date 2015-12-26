# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# insert film type
Type.create(:name => 'uncategorized')
Type.create(:name => 'action')
Type.create(:name => 'comedy')
Type.create(:name => 'mystery')

# insert film title
10.times do |no|
  Title.create(:name => "Sameple #{no}", :comming => "2015-12-2#{no}", :type_id => no%4 + 1)
end
