require 'parseconfig'

def set_api_key( api_key )
	file = File.open( 'paralleldots_key.conf', 'w' )
	config = ParseConfig.new( file )
	config.add( "PD", api_key )
	config.write( file )
	file.close
	puts "API Key Set.\nKey Value: %s"%api_key
end

def get_api_key
	begin
		config = ParseConfig.new( "paralleldots_key.conf" )
		return config[ "PD" ]
		
		rescue
			puts "No API Key Found."
			return
	end
end