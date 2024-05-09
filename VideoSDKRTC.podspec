Pod::Spec.new do |s|
  s.name             = 'VideoSDKRTC'
  s.version          = '2.1.2'
  s.summary          = 'Interactive Video API Experiences for Developers.'
  s.description      = <<-DESC
                       Video SDK enables the opportunity to integrate immersive video experiences into your application.
                       DESC
  s.homepage         = 'https://github.com/pippo27/videosdk-rtc-ios-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zujo Tech Pvt Ltd.' => 'support@zujo.io' }
  s.source           = { :git => 'https://github.com/pippo27/videosdk-rtc-ios-sdk.git', :tag => 'v2.1.2' }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '12.0'
  s.vendored_frameworks = 'Frameworks/Mediasoup.xcframework', 'Frameworks/VideosdkWebSocket.xcframework', 'Frameworks/VideoSDKRTC.xcframework'
  s.module_map       = 'ModuleMaps/WebRTC.modulemap'
  
  s.subspec 'WebRTC' do |webrtc|
    webrtc.vendored_frameworks = 'Frameworks/WebRTC.xcframework'
  end
  
  s.xcconfig = {
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
    'ENABLE_BITCODE' => 'NO',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'SKIP_INSTALL' => 'NO'
  }
end
