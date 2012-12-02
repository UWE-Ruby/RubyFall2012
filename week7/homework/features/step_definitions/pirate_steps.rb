# encoding: utf-8
Gangway /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new
end
Blimey /^I say 'Hello Friend'$/ do 
	@translator.phrase ='Hello Friend'
end

Blimey /^I hit translate$/ do
  @result = @translator.translate 
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @result.should match 'Ahoy Matey'
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @result.should match 'Shiber Me Timbers You Scurvey Dogs!!'
end
		# given (code)     | "Gangway"                |
      # | when (code)      | "Blimey"                 |
      # | then (code)      | "Letgoandhaul"           |
      # | and (code)       | "Aye"                    |
      # | but (code)       | "Avast"  