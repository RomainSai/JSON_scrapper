require 'json'
load 'lib/scrapper.rb'

def perform
  hash = get_the_email_of_a_townhal_from_its_webpage(get_all_the_urls_of_val_doise_townhalls)
  File.open("db/email.JSON","w") do |f|
    f.write(hash.to_json)
  end
end

perform
