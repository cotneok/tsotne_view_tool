require_relative 'lib/tsotne_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "tsotne_view_tool"
  spec.version       = TsotneViewTool::VERSION
  spec.authors       = ["Tsotne Okrostsvaridze"]
  spec.email         = ["cotne.ok@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "http://vaba.co/"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.3")

  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
