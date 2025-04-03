Pod::Spec.new do |s|
  s.name             = 'ffmpeg_kit_flutter_min'
  s.version          = '6.0.3'
  s.summary          = 'FFmpeg Kit for Flutter'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ARTHENICA' => 'open-source@arthenica.com' }

  s.platform            = :ios
  s.requires_arc        = true
  s.static_framework    = true

  s.source              = { :path => '.' }
  s.source_files        = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'

  s.default_subspec = 'min'

  s.dependency          'Flutter'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  s.subspec 'min'  do |ss|
    ss.vendored_frameworks = 'Frameworks/ffmpegkit.xcframework',
                             'Frameworks/libavcodec.xcframework',
                             'Frameworks/libavdevice.xcframework',
                             'Frameworks/libavfilter.xcframework',
                             'Frameworks/libavformat.xcframework',
                             'Frameworks/libavutil.xcframework',
                             'Frameworks/libswresample.xcframework',
                             'Frameworks/libswscale.xcframework'
    end

end
