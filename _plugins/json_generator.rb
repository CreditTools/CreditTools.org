require 'json'

module Jekyll
  class JSONGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.pages.each do |page|
        if page.data['layout'] == 'card'
          json = page.data.reject { |k, _| k == 'layout' }
          json_dir = File.join(site.dest, 'cards')
          FileUtils.mkdir_p(json_dir) unless File.exist?(json_dir)
          json_file = File.join(json_dir, "#{page.data['card_name'].downcase.gsub(' ', '-')}.json")

          File.open(json_file, 'w') do |f|
            f.write(JSON.pretty_generate(json))
          end
        end
      end
    end
  end
end
