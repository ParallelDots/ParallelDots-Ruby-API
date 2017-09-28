Gem::Specification.new do |s|
	s.name                = 'paralleldots'
	s.version              = '1.0.9'
	s.date                 = '2017-04-10'
	s.summary              = "Ruby Wrapper for ParallelDots APIs"
	s.description          = "Ruby Wrapper for ParallelDots APIs"
	s.authors              = [ "Meghdeep Ray" ]
	s.email                = 'meghdeepr@paralleldots.com'
	s.files                = [ "lib/paralleldots.rb", "lib/config.rb" ]
	s.extra_rdoc_files     = [ 'README.md' ]
	s.homepage             = 'http://rubygems.org/gems/paralleldots'
	s.license              = 'MIT'

	s.post_install_message = "\nInstallation Comlete !\nGet your free API key: https://www.paralleldots.com/text-analysis-apis\nDocs: https://www.paralleldots.com/docs/\nHappy Coding !\n\n"

	s.add_runtime_dependency( 'rest-client', '~> 1.8', '>=1.8.0' )
	s.add_runtime_dependency( 'parseconfig', '~> 1.0', '>=1.0.8' )
end