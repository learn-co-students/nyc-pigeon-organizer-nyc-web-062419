# frozen_string_literal: true

require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(keys, attributes), pigeon_list|
    attributes.each do |value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name] ||= {}
        binding.pry
        pigeon_list[name][keys] ||= []
        binding.pry
        pigeon_list[name][keys].push(value.to_s)
        binding.pry
      end
    end
  end
end
