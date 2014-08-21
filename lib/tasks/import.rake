require 'csv'

desc "Import cities from csv file"
task :import => [:environment] do

  file = "db/cities_test.csv"

  CSV.foreach(file, :headers => false) do |row|
    City.create(
      country: row[0],
      region: row[1],
      name: row[2],
      first_letter: row[2][0].downcase
    )
  end

end