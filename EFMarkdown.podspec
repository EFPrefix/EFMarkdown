Pod::Spec.new do |s|
    s.name             = 'EFMarkdown'
    s.version          = '5.0.0'
    s.summary          = 'A lightweight Markdown library for iOS.'

    s.description      = <<-DESC
    A lightweight Markdown library in Swift, based on EFCMark, inspired by markdown and Markoff.
    DESC

    s.homepage         = 'https://github.com/EyreFree/EFMarkdown'
    s.screenshots      = 'https://raw.githubusercontent.com/EFPrefix/EFMarkdown/master/Assets/EFMarkdown.png'
    s.license          = { :type => 'WTFPL', :file => 'LICENSE' }
    s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
    s.source           = { :git => 'https://github.com/EyreFree/EFMarkdown.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/EyreFree777'

    s.ios.deployment_target = '8.0'
    s.requires_arc = true
    s.source_files = 'EFMarkdown/Classes/**/*'

    s.resource_bundles = {
        'EFMarkdown' => ['EFMarkdown/Assets/**/*']
    }

    s.dependency 'EFCMark', '0.0.2'
end
