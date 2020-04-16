require 'pry'

def nyc_pigeon_organizer(data)
  hash = {}
  data[:gender][:male].each do |ele|
    hash[ele] = { color: [], gender: [], lives: [] }
  end
  data[:gender][:female].each do |ele|
    hash[ele] = { color: [], gender: [], lives: [] }
  end
  data[:color].each do |key, value|
    value.each do |person|
      if hash.has_key?(person)
        hash[person][:color] << key.to_s
      end
    end
  end
    data[:gender].each do |key, value|
      value.each do |person|
        if hash.has_key?(person)
          hash[person][:gender] << key.to_s
        end
      end
    end
    data[:lives].each do |key, value|
      value.each do |person|
        if hash.has_key?(person)
          hash[person][:lives] << key.to_s
        end
      end
    end
  hash
end
