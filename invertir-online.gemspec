lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'invertir-online/version'

Gem::Specification.new do |spec|
  spec.name          = 'invertir-online'
  spec.version       = InvertirOnline::VERSION
  spec.authors       = ['Agustin Pina']
  spec.email         = ['aguspina87@gmail.com']

  spec.summary       = 'API Wrapper for the Invertir Online stock exchange.'
  spec.homepage      = 'https://github.com/aguspina/invertir-online'
  spec.license       = 'MIT'

  spec.files         = Dir['bin/*'] +
                       Dir['lib/**/*.rb']

  spec.require_paths = ['lib']

  spec.bindir        = 'bin'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'faraday', '~> 0.12'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.12'
  spec.add_runtime_dependency 'faye-websocket', '~> 0.10'
end
