# Filehandling/handler.rb

module FileHandling
  def self.create_file(filename, content)
    File.open(filename, "w") do |file|
      file.write(content)
    end
    puts "File '#{filename}' created successfully!"
  end
end
