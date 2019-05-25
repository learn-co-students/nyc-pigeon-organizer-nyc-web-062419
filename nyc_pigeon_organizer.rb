require 'pry'
pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }




def nyc_pigeon_organizer(data)
  new_hash = create_profiles data
  data.each do |trait,details|
    details.each do |detail,pigeons|
      pigeons.each do |pigeon|
        new_hash[pigeon][trait] << detail.to_s
      end
    end
  end
  new_hash
end

def create_profiles data
  birds = []
  hash = {}
  data.each do |keys,pigeons|
    birds << pigeons.values
  end
  birds.flatten.uniq.each do |bird|
    hash[bird] = {lives:[],gender:[],color:[]}
  end
  hash
end

