require_relative 'config'
require 'rest-client'
require 'open-uri'
require 'json'

def check( api_key, text )
	if api_key == nil or api_key == "" then
		return { "error": "API Key cannot be nil or an empty String." }
	end
	if text.class != String then
		return { "error": "Input has to be a String." }
	end
	if text == "" then
		return { "error": "Input cannot be an empty String." }
	end
	return true
end

def sentiment( text, lang_code= "en" )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/sentiment", { api_key: api_key, text: text, lang_code: lang_code }
	response = JSON.parse( response )
	return response
end

def ner( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/ner", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def keywords( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/keywords", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def intent( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/intent", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def emotion( text, lang_code= "en" )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/emotion", { api_key: api_key, text: text, lang_code: lang_code }
	response = JSON.parse( response )
	return response
end

def abuse( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/abuse", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def taxonomy( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/taxonomy", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def similarity( text_1, text_2 )
	api_key  = get_api_key
	valid_1  = check( api_key, text_1 )
	valid_2  = check( api_key, text_2 )
	if valid_1 != true or valid_2 != true then
		return { text_1: valid_1, text_2: valid_2 }
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/similarity", { api_key: api_key, text_1: text_1, text_2: text_2 }
	response = JSON.parse( response )
	return response
end

def custom_classifier( text, category )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	category = category.to_json
	response = RestClient.post "https://apis.paralleldots.com/v3/custom_classifier", { api_key: api_key, text: text, category: category }
	response = JSON.parse( response )
	return response
end

def phrase_extractor( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/phrase_extractor", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def text_parser( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/text_parser", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def multilang_keywords( text, lang_code= "en" )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/multilang_keywords", { api_key: api_key, text: text, lang_code: lang_code }
	response = JSON.parse( response )
	return response
end

def popularity( path )
	api_key  = get_api_key
	valid    = check( api_key, path )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/popularity", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def nsfw( path )
	api_key  = get_api_key
	valid    = check( api_key, path )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/nsfw", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def facial_emotion( path )
	api_key  = get_api_key
	valid    = check( api_key, path )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/facial_emotion", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def object_recognizer( path )
	api_key  = get_api_key
	valid    = check( api_key, path )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/object_recognizer", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def popularity_url( url )
	api_key  = get_api_key
	valid    = check( api_key, url )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/popularity", { api_key: api_key, url: url }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: https://www.paralleldots.com/terms-and-conditions"
	return response
end

def nsfw_url( url )
	api_key  = get_api_key
	valid    = check( api_key, url )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/nsfw", { api_key: api_key, url: url }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: https://www.paralleldots.com/terms-and-conditions"
	return response
end

def facial_emotion_url( url )
	api_key  = get_api_key
	valid    = check( api_key, url )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/facial_emotion", { api_key: api_key, url: url }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: https://www.paralleldots.com/terms-and-conditions"
	return response
end

def object_recognizer_url( url )
	api_key  = get_api_key
	valid    = check( api_key, url )
	if valid != true then
		return valid
	end
	response = RestClient.post "https://apis.paralleldots.com/v3/object_recognizer", { api_key: api_key, url: url }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: https://www.paralleldots.com/terms-and-conditions"
	return response
end

def usage()
	api_key  = get_api_key
	if api_key == nil or api_key == "" then
		return { "error": "API Key cannot be nil or an empty String." }
	end
	response = RestClient.post "https://apis.paralleldots.com/usage", { api_key: api_key }
	response = JSON.parse( response )
	return response
end