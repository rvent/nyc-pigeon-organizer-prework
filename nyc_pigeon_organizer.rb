def names_only_pigeon_hash(data)
  new_pigeon_hash = {}
  data.each do |descriptor, specifics|
    specifics.each do |specific, names|
      specifics.values.flatten.each do |name|
        new_pigeon_hash[name] = {}
      end
    end
  end
  new_pigeon_hash
end

def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon_hash = names_only_pigeon_hash(data)
  data.each do |descriptor, specifics|
    specifics.each do |specific, names|
      new_pigeon_hash.keys.each do |name|
        if names.include?(name)
          if new_pigeon_hash[name][descriptor] == nil
            new_pigeon_hash[name][descriptor] = [specific.to_s]
          else
            new_pigeon_hash[name][descriptor] << specific.to_s
          end
        end
      end
    end
  end
  new_pigeon_hash
end

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

puts nyc_pigeon_organizer(pigeon_data)
