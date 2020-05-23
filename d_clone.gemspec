require_relative 'lib/d_clone/version'

Gem::Specification.new do |spec|
  spec.name          = "d_clone"
  spec.version       = DClone::VERSION
  spec.authors       = ["Gursimranjit Singh Channa"]
  spec.email         = ["gursimranjit1196@gmail.com"]

  spec.summary       = %q{To Deep Clone Array and Hash.}
  spec.description   = %q{Deep clone Array and Hash.}
  spec.homepage      = "https://rubygems.org/gems/d_clone"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.2.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.files = [ 
    "lib/d_clone.rb", 
    "lib/d_clone/version.rb",
    "lib/d_clone/array.rb",
    "lib/d_clone/hash.rb"
  ]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.0"
end
