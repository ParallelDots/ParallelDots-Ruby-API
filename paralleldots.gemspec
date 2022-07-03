Gem::Specification.new do |s|
	s.name                = 'paralleldots'
	s.version              = '3.2.10'
	s.date                 = '2019-03-28'
	s.summary              = "Ruby Wrapper for ParallelDots APIs"
	s.description          = "Ruby Wrapper for ParallelDots APIs"
	s.authors              = [ "Vipin Gupta" ]
	s.email                = 'vipin@paralleldots.com'
	s.files                = [ "lib/paralleldots.rb", "lib/config.rb" ]
	s.extra_rdoc_files     = [ 'README.md' ]
	s.homepage             = 'http://rubygems.org/gems/paralleldots'
	s.license              = 'MIT'

	s.post_install_message = "\nInstallation Comlete !\nGet your free API key: https://www.paralleldots.com/text-analysis-apis\nDocs: https://www.paralleldots.com/docs/\nHappy Coding !\n\n"

	s.add_runtime_dependency( 'rest-client', '>= 1.8')
	s.add_runtime_dependency( 'parseconfig', '~> 1.0', '>=1.0.8' )
	s.required_ruby_version = '>= 2.3.1'
end