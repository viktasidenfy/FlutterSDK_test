#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint idenfy_sdk_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'idenfy_sdk_flutter'
  s.version          = '2.5.7'
  s.summary          = 'iDenfy SDK for Flutter'
  s.description      = <<-DESC
iDenfy SDK for Flutter
                       DESC
  s.homepage         = 'https://www.idenfy.com/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'iDenfy' => 'techsupport@idenfy.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'iDenfySDK/iDenfyLiveness', '1.9.6'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '6.0'
end
