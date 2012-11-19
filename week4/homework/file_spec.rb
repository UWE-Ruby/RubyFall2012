#!/usr/bin/env ruby
require "#{File.dirname(__FILE__)}/filer"

describe Filer do
  
            it "read files like my_output.txt" do
               Filer.openfile('output.txt')
              File.exist?('output.txt').should eq true
            end
            
            it "writes 'Hello World' to a file called my_output.txt" do
              Filer.writefile('output.txt')          do
              File.open('output.txt').readline.should eq "Hello World"
            end
              #originally used code below. Removed after passing the test to refactor code and make code more readable.
              #fileresult= File.open('output.txt').readline
              #result = fileresult.readline
              #result.should eq "Hello World"
            end
            
            it "uses the Directory Class" do
              dirresult = Filer.dir('./')
              dirresult.should == true  
            end
            
            it "uses an IO Object" do
              result = Filer.use_IO_obj()
              result.should eq IO
            end
end
