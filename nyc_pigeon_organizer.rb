require 'pry'

def nyc_pigeon_organizer(data)
  #initialize empty hash that organozized data will get pushed into
  hash = {}

  #iterate over original hash down to bottom level which is the pigeones names

  data.each do |level1, level2|
    level2.each do |level3, level4|
      level4.each do |name|

  #if hash[name] is empty 1st step is to create hash with key of bird name
       if hash[name] == nil
        hash[name] = {}
        hash[name][level1] = []
       else
        hash[name][level1] = []
        end
      end
    end
  end
hash.each do |name, level2|
  level2.each do |hashval, level4|
    data.each do |level1, level2|
      level2.each do |level3, level4|
        level4.each do |ele|
          if ele == name && hashval == level1
            hash[name][hashval] << level3.to_s
          end
        end
      end
    end
  end
end
hash
end