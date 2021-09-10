Pod::Spec.new do |s|
  s.name             = 'AMRAdapterIronsource'
  s.version          = '7.1.10.1'
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
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.vendored_libraries = 'AMRAdapterIronsource/Libs/libAMRAdapterIronsource.a'
  s.dependency 'AMRSDK', '~> 1.4.75'
  s.dependency 'IronSourceSDK', '7.1.10'
end
