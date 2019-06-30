require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  x = {}
  data.each do |info,option|
    option.each do |option,name|
      name.each do |pigeon|
        x[pigeon] ||= {}
        x[pigeon][info] ||= []
        x[pigeon][info] << option.to_s
      end
    end
  end
  x
end

