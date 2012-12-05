#!usr/bin/env ruby
require '/home/wsugg/.rvm/gems/ruby-1.9.3-p194/gems/ruby-audio-1.6.1/lib/ruby-audio.rb'

class Object
	def call_chain
		"#{self}"
	end
end

class Animal
	def call_chain
	"Animal.#{super}"
	end
end

module NamedThing
	def call_chain
	"NamedThing.#{super}"
	end
end 

module Speaker
	def call_chain
	"Speaker.#{super}"
	end
end 

class Person < Animal
	include NamedThing
	include Speaker
	def call_chain
	"Person.#{super}"
	end
end

class Renee < Person
#include Beep
	def call_chain
	"Renee.#{super}"
	super
	end
	def rbeep
		#result = Beep::Sound.generate('beep -f 100')
		puts result
	end

end 


info = RubyAudio::SoundInfo.new :channels => 1, :samplerate => 48000, :format => RubyAudio::FORMAT_WAV|RubyAudio::FORMAT_PCM_16
puts info


buf = RubyAudio::Buffer.float(1000)
snd.read(buf)                        #=> 1000
snd.read(buf, 50)                    #=> 50
=begin
snd = RubyAudio::Sound.open("snd.wav")
puts snd.info.channels                  #=> 2
puts snd.info.samplerate                #=> 48000
snd.close=end

		
=begin
Samplerate = 8000

def beep(frequency, amplitude, duration)

        f = File.open("/dev/dsp", "w")

        wave = ""

        0.step(duration, 1.0/Samplerate) do |t|
                y = Math.sin(t * frequency) * 50 + 127;
                wave << y.to_i.chr
        end

        f.write(wave)
end

beep(2000, 100, 1)
=end
