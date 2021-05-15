require "csv"

  
CSV.foreach('db/court4.csv', headers: true) do |row|

  Court.create!(
    name: row['name'],
    type: row['type'],
    area: row['area'],
    image: open("./db/fixtures/image2.jpg"),
    access: row['access'],
    opening_hour: row['opening_hour'],
    features: row['Features'],
    prefecture_id: row['prefecture_id']
  )
end