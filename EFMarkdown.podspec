#
# Be sure to run `pod lib lint EFMarkdown.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EFMarkdown'
  s.version          = '0.0.4'
  s.summary          = 'A lightweight Markdown library for iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A lightweight Markdown library in Swift, based on EFCMark, inspired by markdown and Markoff.
                       DESC

  s.homepage         = 'https://github.com/EyreFree/EFMarkdown'
  #s.screenshots     = 'raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample1.png'
  s.license          = { :type => 'WTFPL', :file => 'LICENSE' }
  s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
  s.source           = { :git => 'https://github.com/EyreFree/EFMarkdown.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/EyreFree777'

  s.ios.deployment_target = '8.0'

  s.source_files = 'EFMarkdown/Classes/**/*'
  
  s.resource_bundles = {
    'EFMarkdown' => ['EFMarkdown/Assets/**/*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'EFCMark'
end
