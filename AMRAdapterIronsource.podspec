Pod::Spec.new do |s|
  s.name             = 'AMRAdapterIronsource'
  s.version          = '8.9.1.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Ironsource adapter for AMR SDK.'
  s.description      = 'AMR Ironsource adapter allows publishers to mediate interstitial, video and offerwall ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-IRONSOURCE.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 arm64e armv7 armv7s x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 armv7s arm64 arm64e',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64 arm64e'
  }
  s.vendored_frameworks = 'AMRAdapterIronsource/Libs/AMRAdapterIronsource.xcframework'
  s.dependency 'AMRSDK', '~> 1.5.55'
  s.dependency 'IronSourceSDK', '= 8.9.1'
end
