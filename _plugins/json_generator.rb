require 'json'

module Jekyll
  class JSONGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.collections['cards'].docs.each do |page|
        if page.data['layout'] == 'card'
          puts "Processing: #{page.data['card_name']}"  # Debug output
          json = page.data.reject { |k, _| k == 'layout' }
          json_dir = File.join(site.dest, 'cards_json')

          # Debug: Print the json_dir path
          puts "JSON directory: #{json_dir}"

          FileUtils.mkdir_p(json_dir) unless File.directory?(json_dir)
          
          # Debug: Verify directory creation
          if File.directory?(json_dir)
            puts "Directory created successfully: #{json_dir}"
          else
            puts "Failed to create directory: #{json_dir}"
          end

          json_file = File.join(json_dir, "#{page.data['card_name'].downcase.gsub(' ', '-')}.json")

          begin
            File.open(json_file, 'w') do |f|
              f.write(JSON.pretty_generate(json))
            end

            # Debug: Verify file creation
            if File.exist?(json_file)
              puts "Successfully created: #{json_file}"
            else
              puts "Failed to create file: #{json_file}"
            end
          rescue => e
            puts "Error creating JSON file for #{page.data['card_name']}: #{e.message}"
          end
        end
      end
    end
  end
end
