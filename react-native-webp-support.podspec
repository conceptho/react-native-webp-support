require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/conceptho/react-native-webp-support.git", :tag => "v#{s.version}" }
  s.source_files  = "DBAWebpImageDecoder.{h,m}"
  s.vendored_frameworks = 'WebPDemux.framework', 'WebP.framework'
  s.requires_arc = true
  s.dependency 'React'
end
