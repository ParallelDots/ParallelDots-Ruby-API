require_relative 'config'
require 'rest-client'
require 'open-uri'
require 'json'

def sentiment( text, lang_code= "en" )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/sentiment", { api_key: api_key, text: text, lang_code: lang_code }
	response = JSON.parse( response )
	return response
end

def ner( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/ner", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def keywords( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/keywords", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def intent( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/intent", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def emotion( text, lang_code= "en" )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/emotion", { api_key: api_key, text: text, lang_code: lang_code }
	response = JSON.parse( response )
	return response
end

def abuse( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/abuse", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def taxonomy( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/taxonomy", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def similarity( text_1, text_2 )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/similarity", { api_key: api_key, text_1: text_1, text_2: text_2 }
	response = JSON.parse( response )
	return response
end

def custom_classifier( text, category )
	api_key  = get_api_key
	category = category.to_json
	response = RestClient.post "https://apis.paralleldots.com/v3/custom_classifier", { api_key: api_key, text: text, category: category }
	response = JSON.parse( response )
	return response
end

def phrase_extractor( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/phrase_extractor", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def language_detection( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/language_detection", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def text_parser( text )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/text_parser", { api_key: api_key, text: text }
	response = JSON.parse( response )
	return response
end

def multilang_keywords( text, lang_code= "en" )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/multilang_keywords", { api_key: api_key, text: text, lang_code: lang_code }
	response = JSON.parse( response )
	return response
end

def popularity( path )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/popularity", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def nsfw( path )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/nsfw", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def facial_emotion( path )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/facial_emotion", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def object_recognizer( path )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/object_recognizer", { api_key: api_key, file: File.new( path ) }
	response = JSON.parse( response )
	return response
end

def popularity_url( url )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/popularity", { api_key: api_key, url: url }
	response = JSON.parse( response )
	return response
end

def nsfw_url( url )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/nsfw", { api_key: api_key, url: url }
	response = JSON.parse( response )
	return response
end

def facial_emotion_url( url )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/facial_emotion", { api_key: api_key, url: url }
	response = JSON.parse( response )
	return response
end

def object_recognizer_url( url )
	api_key  = get_api_key
	response = RestClient.post "https://apis.paralleldots.com/v3/object_recognizer", { api_key: api_key, url: url }
	response = JSON.parse( response )
	return response
end

def usage()
	api_key  = get_api_key
	if api_key == nil or api_key == "" then
		return { "Error": "API Key cannot be nil or an empty String." }
	end
	response = RestClient.post "https://apis.paralleldots.com/usage", { api_key: api_key }
	response = JSON.parse( response )
	return response
end


def batch_intent( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/intent_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response	
end

def batch_abuse( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/abuse_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response
end

def batch_ner( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/ner_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response
end

def batch_taxonomy( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/taxonomy_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response	
end

def batch_language_detection( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/language_detection_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response		
end

def batch_phrase_extractor( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/phrase_extractor_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response
end

def batch_keywords( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/keywords_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response
end

def batch_sentiment( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/sentiment_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response
end

def batch_emotion( data )
	api_key  = get_api_key()
	response = RestClient.post "https://apis.paralleldots.com/v3/emotion_batch", { "data": data.to_json, "api_key": api_key }
	response = JSON.parse( response )
	return response
end

# puts(batch_sentiment(["you are ass hole","people loves fucking weak","sachin is good player"]))