Gem::Specification.new do |s|
  s.name = 'pjson-rb'
  s.version = '0.0.1'
  s.date = '2012-09-18'

  s.description = "pipe to pretty print json utility"
  s.summary =
    "Pipe json in the terminal and make it pretty."

  s.authors     = ["Mark Sands"]
  s.email       = "marksands07@gmail.com"

  s.files = %w[
    README.md
    Rakefile
    pjson.gemspec
    bin/pjson
    lib/pjson.rb
    test/test_pjson.rb
  ]

  s.default_executable = 'pjson'
  s.executables = ['pjson']

  s.test_files = s.files.select {|path| path =~ /^test\/.*_test.rb/}
  s.add_dependency 'pygments.rb', '~> 0.2.13'

  s.has_rdoc = false
  s.homepage = "http://github.com/marksands/pjson-rb/"
  s.require_paths = %w[lib]
end