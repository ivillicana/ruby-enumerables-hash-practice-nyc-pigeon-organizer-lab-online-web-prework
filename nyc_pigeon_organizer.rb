def nyc_pigeon_organizer(data)
  result = {}
  data.each do |attribute, attr_hash|
    attr_hash.each do |nested_attr, names_array| 
      names_array.each do |name|
        result[name] = {} if !result[name]
        result[name][attribute] = [] if !result[name][attribute]
        result[name][attribute] << nested_attr.to_s if !result[name][attribute].include?(nested_attr)
      end
    end
  end
  result
end
