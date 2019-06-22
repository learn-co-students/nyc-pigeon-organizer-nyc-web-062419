require 'pry'
require 'byebug'

# before(:all) do
#       pigeon_data = {
#         :color => {
#           :purple => ["Theo", "Peter Jr.", "Lucky"],
#           :grey => ["Theo", "Peter Jr.", "Ms. K"],
#           :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#           :brown => ["Queenie", "Alex"]
#         },
#         :gender => {
#           :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#           :female => ["Queenie", "Ms. K"]
#         },
#         :lives => {
#           "Subway" => ["Theo", "Queenie"],
#           "Central Park" => ["Alex", "Ms. K", "Lucky"],
#           "Library" => ["Peter Jr."],
#           "City Hall" => ["Andrew"]
#         }
#       }

def nyc_pigeon_organizer(data)
  goal = {}
  names = []
  data.each do |attributes, deeper_attributes|
  	deeper_attributes.each do |attribute, name_array|
  		name_array.each do |bird_name|
  		names << bird_name if !names.include?(bird_name)
		end
	end
  end
  	names.each do |bird_name_again|
  		goal[bird_name_again] = Hash.new { |key, value| key[value] = []}
  		data.each do |attributes, deeper_attributes|
  			goal[bird_name_again][attributes]
  			deeper_attributes.each do |attribute, bird_names|
  				bird_names.each do |another_name|
  					goal[another_name][attributes] << attribute.to_s if another_name == bird_name_again
  				end
  			end
  		end
  	end
  	goal
end