#
# Be sure to run `pod lib lint MyReactNativePod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
require "json"

# package = JSON.parse(File.read(File.join(__dir__, "package.json")))
pkg_version = lambda do |dir_from_root = '', version = 'version'|
	path = File.join(__dir__, dir_from_root, 'package.json')
	JSON.parse(File.read(path))[version]
  end

pod_version = pkg_version.call
rn_version = pkg_version.call('node_modules/react-native')

Pod::Spec.new do |s|
  s.name             = 'MyReactNativePod'
  s.version          = pod_version
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
  s.author           = { 'VunhoyLim' => 'limvunhoyzzz@gmail.com' }
  s.source           = { :git => 'https://github.com/Limvunhoy/react-native-framework.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  puts s.source

  s.ios.deployment_target = '10.0'

  s.source_files     = 'Pod/Classes/**/*.{h,m,swift}'
  s.resources        = 'Pod/Assets/{MyReactNativePod.js,assets}'
  # s.platform         = { :ios => '13.0' }
  s.requires_arc     = true
  s.static_framework = true
  
  s.dependency 'React', rn_version
  s.dependency 'React-Core', rn_version
  s.dependency 'React-CoreModules', rn_version
  s.dependency 'ReactNativeNavigation'
  s.dependency 'react-native-splash-screen'

  podspecs = [
    # 'node_modules/react-native/React.podspec',
	# 'node_modules/react-native/React-Core.podspec',
    'node_modules/react-native/third-party-podspecs/DoubleConversion.podspec',
    'node_modules/react-native/third-party-podspecs/RCT-Folly.podspec',
    'node_modules/react-native/third-party-podspecs/glog.podspec'
  ]

podspecs.each do |podspec_path|
    podspec_json = JSON.parse(`pod ipc spec #{podspec_path}`)
    s.dependency podspec_json['name'], podspec_json['version']
end
#   podspecs.each do |podspec_path|
#     spec = Pod::Specification.from_file podspec_path
#     s.dependency spec.name, "#{spec.version}"
#   end
  
  # s.resource_bundles = {
  #   'MyReactNativePod' => ['MyReactNativePod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
