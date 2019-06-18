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
  new_hash = {}
   data.each do |attribute, hash|
    hash.each do |key, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].has_key?(attribute)
          new_hash[name][attribute] = []
        end
        if !new_hash[name][attribute].include?(key)
          new_hash[name][attribute] << key.to_s
        end
      end
    end
  end
  new_hash
end

 nyc_pigeon_organizer(pigeon_data)
 
def nyc_pigeon_organizer(pigeon_data)
  new_hash = {}
  pigeon_data.each do |attribute, data|
    data.each do |key, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].has_key?(attribute)
          new_hash[name][attribute] = []
        end
        if !new_hash[name][attribute].include?(key)
          new_hash[name][attribute] << key.to_s
        end
      end
    end
  end
  new_hash
end