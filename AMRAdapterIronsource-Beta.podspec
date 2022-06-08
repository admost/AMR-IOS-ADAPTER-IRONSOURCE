Pod::Spec.new do |s|
  s.name             = 'AMRAdapterIronsource-Beta'
  s.version          = '7.2.2.1'
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
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.vendored_frameworks = 'AMRAdapterIronsource/Libs/AMRAdapterIronsource.xcframework'
  s.dependency 'AMRSDK-Beta', '~> 1.5.7'
  s.dependency 'IronSourceSDK', '7.2.2'
end
