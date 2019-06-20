def nyc_pigeon_organizer(data)
  # write your code here!

  pigeon_hash = {}

  data.each do |property_type, property_hash|
    property_hash.each do |property, bearers|
      bearers.each do |bearer|
        if pigeon_hash.keys.include? bearer
          if pigeon_hash[bearer].keys.include? property_type
            pigeon_hash[bearer][property_type].push(property.to_s)
          else
            pigeon_hash[bearer][property_type] = [property.to_s]
          end
        else
          pigeon_hash[bearer] = {property_type => [property.to_s]}
        end
      end
    end
  end

  pigeon_hash
end