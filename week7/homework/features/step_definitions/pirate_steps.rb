Gangway /^I have a PirateTranslator$/ do
  @translator = Pirate.new
end

Blimey /^I say 'Hello Friend'$/ do  #when
  @text = @translator.text("Hello Friend")
end

Blimey /^I hit translate$/ do #when
  @result = @translator.translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do  #then
  if "#{@text}" == "Hello Friend"
    @result.should == "Ahoy Matey"
  end
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do  #then
  if "#{@text}" != "Hello Friend"
  	@result.should eq "Shiber Me Timbers You Scurvey Dogs!!"
  end
end

