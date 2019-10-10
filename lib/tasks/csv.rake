require "csv"
namespace :csv do
  desc "TODO"
  task vehicles: :environment do
    CSV.foreach("vehicles.csv", headers: true) do |row|
      p YearMakeModel.find_or_create_by(year: row["year"], make: row["make"], model: row["model"])
    end
    puts "task complete"
  end
end
