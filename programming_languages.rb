require "pry"
def reformat_languages(languages)
##
## hash[key] = value
## hash[key] = {second_key: second_value}
new_hash = {}
languages.each do |style, lang_name|
#  binding.pry
  lang_name.each do |lang_name , type|
#    binding.pry
#    new_hash[lang_name] = {style: [style]}
#
    if new_hash.include?(lang_name)
      new_hash[lang_name][:style].push(style)
    else
      new_hash[lang_name] = {style: [style]}
      new_hash[lang_name].merge!(type)
#    binding.pry
    end
  end
end
new_hash
end
