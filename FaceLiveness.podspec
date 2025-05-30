#
# Be sure to run `pod lib lint FaceLiveness.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FaceLiveness'
  s.version = '7.2.1'
  s.summary          = 'Face Liveness'
  s.homepage         = 'https://github.com/combateafraude/iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'services@caf.io' => 'services@caf.io' }
  s.source           = { :git => 'https://github.com/combateafraude/FaceLiveness.git', :tag => s.version.to_s }


  s.swift_version = '5.3.2'
  s.ios.deployment_target = '13.0'
  s.ios.vendored_frameworks = 'Sources/FaceLiveness.xcframework'

  s.dependency 'iProov', '12.3.0'
  s.dependency 'FingerprintPro', '2.7.0'
  s.dependency 'CafSolutions', '2.0.3'
end
