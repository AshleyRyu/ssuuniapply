require 'csv'
namespace :import_univdate_csv do
  task :create_results => :environment do
    CSV.foreach("public/results.csv", :headers => true) do |row|
      Result.create!(row.to_hash)
    end
  end
end