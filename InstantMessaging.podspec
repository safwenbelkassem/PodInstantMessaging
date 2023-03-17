#
# Be sure to run `pod lib lint InstantMessaging.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'InstantMessaging'
  s.version          = '0.1.0'
  s.summary          = 'this is InstantMessaging.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://github.com/safwenbelkassem/PodInstantMessaging.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Safwen belkacem' => 'safouanbelkacem@gmail.com' }
  s.source           = { :git => 'https://github.com/safwenbelkassem/PodInstantMessaging.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.swift_versions = ['4.2', '5.0', '5.1']
  s.ios.deployment_target = '14.0'
  s.resources = 'Assets/*','Ressources/Fonts/*'
  s.source_files = 'Classes/**/*.swift' ,'Classes/**/**/*.swift'
  s.resource_bundles = {
    'InstantMessaging' => ['Assets/*','Ressources/Fonts/*']
  }
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

end
