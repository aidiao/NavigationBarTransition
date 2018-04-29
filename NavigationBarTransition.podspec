
Pod::Spec.new do |s|
  s.name             = 'NavigationBarTransition'
  s.version          = '0.0.1-init'
  s.summary          = 'A library that can make a elegant transition of the navigation bar.'
 
  s.description      = <<-DESC
  A library that can make a elegant transition of the navigation bar. Just test!
                       DESC
 
  s.homepage         = 'https://github.com/aidiao/NavigationBarTransition'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aidiao' => '2506776631@qq.com' }
  s.source           = { :git => 'https://github.com/aidiao/NavigationBarTransition.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'NavigationBarTransition/NavigationBarTransition/ViewController.swift'
 
end