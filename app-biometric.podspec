require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['summary']
  s.description    = package['description']
  s.author         = package['author']['name']
  s.license        = package['license']
  s.homepage       = "https://www.npmjs.com/package/app-biometric"
  s.source         = { :git => 'https://www.npmjs.com/package/app-biometric', :tag => "#{s.version}" }
  s.platform       = :ios, '10.0'
  s.source_files   = 'ios/**/*.{h,m}'
  s.dependency     'React-Core'
end
