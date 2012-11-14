File.open("names", "r") do |file|
    file.each do |line|
      Dir.mkdir(line.chomp!)
    end  
end
