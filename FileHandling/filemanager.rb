class FileManager
  def initialize(filename)
    @filename = filename
  end

  def write(content)
    File.open(@filename, "w") do |file|
      file.write(content)
    end
  end

  def append(content)
    File.open(@filename, "a") do |file|
      file.puts(content)
    end
  end

  def read
    if File.exist?(@filename)
      File.read(@filename)
    else
      "File does not exist."
    end
  end

  def delete
    if File.exist?(@filename)
      File.delete(@filename)
      "File deleted."
    else
      "File not found."
    end
  end

  def exists?
    File.exist?(@filename)
  end
end
