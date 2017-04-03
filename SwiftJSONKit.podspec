#
# Be sure to run `pod lib lint SwiftJSONKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'SwiftJSONKit'
s.version          = '0.1.0'
s.summary          = 'A small Swift 3 framework for working with JSON APIs.'
s.description      = 'This CocoaPod provides the ability to deserialize JSON into objects with ease.'
s.homepage         = 'https://github.com/patrickmontalto/SwiftJSONKit'
s.license          = 'MIT'
s.author           = { 'patrickmontalto' => 'pmontalto@gmail.com' }
s.source           = { :git => 'https://github.com/patrickmontalto/SwiftJSONKit.git', :tag => s.version.to_s }
s.ios.deployment_target = '8.0'
s.source_files = 'SwiftJSONKit/Sources/**/*'
end
