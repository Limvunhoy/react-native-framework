#
# Be sure to run `pod lib lint MyReactNativePod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name             = 'MyReactNativePod'
  s.version          = package["version"]
  s.summary          = 'A short description of MyReactNativePod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Limvunhoy'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '39089099' => 'limvunhoyzzz@gmail.com' }
  s.source           = { :git => 'https://github.com/Limvunhoy/react-native-framework.git', :tag => "v#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  puts s.source

  s.ios.deployment_target = '10.0'

  s.source_files      = 'Pod/Classes/**/*.{h,m,swift}'
  s.resources        = 'Pod/Assets/{MyReactNativePod.js,assets}'
  # s.platform         = { :ios => '13.0' }
  s.requires_arc     = true
  s.static_framework = true
  
  # s.dependency 'React', "0.67.4"

  podspecs = [
    'node_modules/react-native/React.podspec'
    # 'node_modules/react-native/third-party-podspecs/DoubleConversion.podspec',
    # 'node_modules/react-native/third-party-podspecs/Folly.podspec',
    # 'node_modules/react-native/third-party-podspecs/glog.podspec'
  ]
  podspecs.each do |podspec_path|
    spec = Pod::Specification.from_file podspec_path
    s.dependency spec.name, "#{spec.version}"
  end
  
  # s.resource_bundles = {
  #   'MyReactNativePod' => ['MyReactNativePod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
