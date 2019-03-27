require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'iconv' unless String.method_defined?(:encode)
#csv_text = File.read('results_ko.csv')
csv_text = File.read(Rails.root.join('lib', 'seeds', 'results_ko.csv'))
if String.method_defined?(:encode)
  csv_text.encode!('UTF-8', 'UTF-8', :invalid => :replace)
else
  ic = Iconv.new('UTF-8', 'UTF-8//IGNORE')
  csv_text = ic.iconv(csv_text)
end

csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
    Result.create(row.to_hash)
end

require 'iconv' unless String.method_defined?(:encode)
csv_text = File.read(Rails.root.join('lib', 'seeds', 'tables.csv'))
if String.method_defined?(:encode)
  csv_text.encode!('UTF-8', 'UTF-8', :invalid => :replace)
else
  ic = Iconv.new('UTF-8', 'UTF-8//IGNORE')
  csv_text = ic.iconv(csv_text)
end

csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
    Table.create(row.to_hash)
end
