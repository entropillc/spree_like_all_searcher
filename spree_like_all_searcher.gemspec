$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spree_like_all_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spree_like_all_searcher"
  s.version     = SpreeLikeAllSearcher::VERSION
  s.authors     = ["Nicholas W. Watson"]
  s.email       = ["nick@entropi.co"]
  s.homepage    = "http://github.com/entropillc/spree_like_all_searcher"
  s.summary     = "Searcher for Spree E-commerce platform that does a like all query instead of a like any"
  s.description = "Searcher for Spree E-commerce platform that does a like all query instead of a like any"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_dependency 'spree_core', '>= 1.1.0'
  s.add_dependency 'spree_auth', '>= 1.1.0'
end
