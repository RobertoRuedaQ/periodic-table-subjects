# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'electivas.csv'))
csv = CSV.parse(csv_text.scrub, headers: true, col_sep: ';')

csv.each do |row|
 t = Subject.new( title: row[0],short: row[1],credits: row[2],schedule: row[3],campus: row[4], category: row[5], faculty: row[6], code: row[7], teacher: row[8], description:row[9])
  t.save
  puts "electiva #{t.title} ha sido registrada en la base de datos."
end