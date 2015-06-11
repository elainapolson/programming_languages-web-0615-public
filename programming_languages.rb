def reformat_languages(languages)
  # languages[style] = languages_hash
  # languages_hash[language_name] = attribute_hash
  # attribute_hash[type] = ""

new_hash = {}


languages.each do |style, languages_hash|
  languages_hash.each do |language_name, attribute_hash|
      attribute_hash.each do |type, type_value|
      if new_hash.has_key?(language_name)
        new_hash[language_name][:style] << style       
      else
        new_hash[language_name] = {}
        new_hash[language_name][:type] = type_value
        new_hash[language_name][:style] = [style]
      end
  end
end
end

new_hash

end

# new_hash = {}

# languages.each do |style, languages_hash|
#   languages_hash.each do |language_name, attribute_hash|
#     if new_hash[language_name].has_key?
      
      
#     end
#     new_hash[language_name] = {:type => "", :style => []}
#       attribute_hash.each do |type, type_value|
#         new_hash[language_name][:type] = type_value
#         new_hash[language_name][:style] << style
#       end
#   end
# end

# new_hash

# end
