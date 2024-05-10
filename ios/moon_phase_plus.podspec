#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint moon_phase_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'moon_phase_plus'
  s.version          = '0.0.1'
  s.summary          = 'Moon widgets according to the moon\'s phase. '
  s.description      = <<-DESC
  Flutter plugin that creates moon widgets according to the moon's phase.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Nova Geni' => 'dev-support@novageni.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0' #'8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
