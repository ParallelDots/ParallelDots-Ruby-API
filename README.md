ParallelDots Ruby API
=======================

A wrapper for the [ParallelDots API](http://www.paralleldots.com).


Installation
------------
From Gem:
	
	gem install paralleldots



API Keys & Setup
----------------
Signup and get your free API key from [ParallelDots](http://www.paralleldots.com/pricing).
You will receive a mail containing the API key at the registered email id.

Configuration:

	> require 'paralleldots'

	# Setting your API key
	> set_api_key("YOUR API KEY")

	# Viewing your API key
	> get_api_key()


Languages Supported:
-------------------

- Portuguese ( pt )
- Simplified Chinese ( Not available in multilingual keyword generator API ) ( zh )
- Spanish ( es )
- German ( de )
- French ( fr )
- Dutch ( nl )
- Italian ( it )
- Japanese ( ja )
- Thai ( th )
- Danish ( da )
- Finnish ( fi )
- Greek ( el )
- Russian ( ru )
- Arabic ( ar )


Supported APIs:
---------------

- Abuse
- Custom Classifier
- Emotion
- Facial Emotion
- Intent
- Keywords
- Sarcasm
- Multilanguage Keywords ( Supports Multiple Languages )
- Named Entity Extraction/Recognition ( NER )
- Not Safe For Work ( NSFW Image Classifier )
- Phrase Extractor
- Popularity ( Image Classifier )
- Object Recognizer
- Sentiment Analysis
- Semantic Similarity
- Taxonomy
- Text Parser
- Usage

Examples
--------

	> set_api_key( "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" )
	> get_api_key

	> path      = "/home/my_computer/Downloads/image_1.jpg"
	> text      = "Prime Minister Narendra Modi tweeted a link to the speech Human Resource Development Minister Smriti Irani made in the Lok Sabha during the debate on the ongoing JNU row and the suicide of Dalit scholar Rohith Vemula at the Hyderabad Central University."
	> category  = { "finance": [ "markets", "economy", "shares" ], "world politics": [ "diplomacy", "UN", "war" ] }
	> lang_code = "fr"
	> lang_text = "C'est un environnement très hostile, si vous choisissez de débattre ici, vous serez vicieusement attaqué par l'opposition."
	> url       = "http://i.imgur.com/klb812s.jpg"

	> puts( "\nAbuse" )
	> abuse( text ) 
	

	> puts( "\nCustom Classifier" )
	> custom_classifier( text, category ) 
	

	> puts( "\nEmotion" )
	> emotion( text )
	

	> puts( "\nEmotion - Lang: Fr". )
	> emotion( lang_text, lang_code )
	

	> puts( "\nFacial Emotion" )
	> facial_emotion( path )

	> puts( "\nFacial Emotion: URL Method" )
	> facial_emotion_url( url )

	> puts( "\nIntent" )
	> intent( text )

	> puts( "\nKeywords" )
	> keywords( text ) 

	> puts( "\nLanguage Detection" )
	> language_detection( lang_text )
	

	> puts( "\nMultilang Keywords - Lang: Fr". )
	> multilang_keywords( lang_text, lang_code )

	> puts( "\nNER" )
	> ner( text )

	> puts( "\nNSFW" )
	> nsfw( path )

	> puts( "\nNSFW: URL Method" )
	> nsfw_url( url )
	

	> puts( "\nObject Recognizer" )
	> object_recognizer( path )

	> puts( "\nObject Recognizer: URL Method" )
	> object_recognizer_url( url )

	> puts( "\nPhrase Extractor" )
	> phrase_extractor( text )

	> puts( "\nPopularity" )
	> popularity( path )

	> puts( "\nPopularity: URL Method" )
	> popularity_url( url ) 

	> puts( "\nSentiment" )
	> sentiment( text ) 

	> puts( "\nSentiment - Lang: Fr". )
	> sentiment( lang_text, lang_code )

	> puts( "\nSimilarity" )
	> similarity( "I love fish and ice cream!", "fish and ice cream are the best!" ) 

	> puts( "\nTaxonomy" )
	> taxonomy( text ) 

	> puts( "\nText Parser" )
	> text_parser( text ) 
	
	> usage()