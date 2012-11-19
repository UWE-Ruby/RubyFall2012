#!/usr/bin/env ruby

class Filer
  
  def self.openfile(filename)
    
    if File.exist?(filename)
       File.open(filename, "r")      
    
    else File.new(filename, "w")
    end
  end
  
  def self.writefile(filename)
    
    if File.exist?(filename)
       File.open(filename, "w").write("Hello World")  #File is automatically closed.
      
    else "file not opened!"
    end
  end
  
  def self.dir(dir)
    result = File.directory?(dir)
  end
  
  def self.use_IO_obj()
  newresult = IO.new(1, "r").class
  end
end

