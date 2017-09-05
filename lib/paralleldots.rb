require_relative 'config'
require 'rest-client'
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

def sentiment( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/sentiment", { api_key: api_key, text: text }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def ner( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/ner", { api_key: api_key, text: text }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def keywords( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/keywords", { api_key: api_key, text: text }
	response = JSON.parse( response )
	response = { "keywords": response, "usage": "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions" }
	return response
end

def intent( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/intent", { api_key: api_key, text: text }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def emotion( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/emotion", { api_key: api_key, text: text }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def abuse( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/abuse", { api_key: api_key, text: text }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def taxonomy( text )
	api_key  = get_api_key
	valid    = check( api_key, text )
	if valid != true then
		return valid
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/taxonomy", { api_key: api_key, text: text }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def similarity( text_1, text_2 )
	api_key  = get_api_key
	valid_1  = check( api_key, text_1 )
	valid_2  = check( api_key, text_2 )
	if valid_1 != true or valid_2 != true then
		return { "text_1": valid_1, "text_2": valid_2 }
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/semanticsimilarity", { api_key: api_key, text_1: text_1, text_2: text_2 }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def multilang_sentiment( text, lang )
	api_key  = get_api_key
	valid_1  = check( api_key, text )
	valid_2  = check( api_key, lang )
	if valid_1 != true or valid_2 != true then
		return { "text": valid_1, "lang": valid_2 }
	end
	response = RestClient.post "http://apis.paralleldots.com/v2/multilang_sentiment", { api_key: api_key, text: text, lang: lang }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end

def usage()
	api_key  = get_api_key
	if api_key == nil or api_key == "" then
		return { "error": "API Key cannot be nil or an empty String." }
	end
	response = RestClient.post "http://apis.paralleldots.com/usage", { api_key: api_key }
	response = JSON.parse( response )
	response[ "usage" ] = "By accessing ParallelDots API or using information generated by ParallelDots API, you are agreeing to be bound by the ParallelDots API Terms of Use: http://www.paralleldots.com/terms-and-conditions"
	return response
end