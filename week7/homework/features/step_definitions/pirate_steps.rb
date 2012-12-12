Gangway /^I have a PirateTranslator$/ do
  @pirate = Pirate.new
end

Blimey /^I say 'Hello Friend'$/ do
  @text = @pirate.text('Hello Friend')
end

Blimey /^I hit translate$/ do
  @result = @pirate.translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  if @text == 'Hello Friend'
    @result.should eq 'Ahoy Matey'
  end
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  if @text != 'Hello Friend'
    @result.should eq 'Shiber Me Timbers You Scurvey Dogs!!'
  end
end
