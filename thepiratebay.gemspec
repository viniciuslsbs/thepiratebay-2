spec = Gem::Specification.new do |s|
  s.name              = %q{thepiratebay}
  s.version           = '0.3.1'
  s.summary           = %q{A simple interface to The Pirate Bay}
  s.description       = %q{A simple interface to The Pirate Bay}
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths     = ["lib"]
  s.extra_rdoc_files  = Dir['[A-Z]*']
  s.rdoc_options      = ["--charset=UTF-8"]
  s.authors           = ["Keegan"]
  s.date              = %q{2015-08-25}
  s.email             = %q{mhsjlw@aol.com}
  s.homepage          = %q{http://github.com/mhsjlw/thepiratebay}

  s.add_dependency "nokogiri"
end
