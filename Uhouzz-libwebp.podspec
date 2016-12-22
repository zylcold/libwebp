
Pod::Spec.new do |s|
  s.name            = "Uhouzz-libwebp"
  s.version         = "0.5.1"
  s.summary         = "Library to encode and decode images in WebP format."
  s.homepage        = "https://github.com/Uhouzz/libwebp"
  s.license         = { :type => "BSD", :file => "COPYING" }
  s.author          = "Google Inc."
  s.platform        = :ios, "7.0.0"
  s.source          = { :git => "https://github.com/Uhouzz/libwebp.git", :tag => "v#{s.version}" }

  s.compiler_flags  = "-D_THREAD_SAFE"
  s.requires_arc    = false 

  s.xcconfig = { 
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }

  # Subspecs
  s.subspec 'webp' do |wp|
    wp.source_files = "src/utils/*.{h,c}", "src/dsp/*.{h,c}", "src/enc/*.{h,c}", "src/dec/*.{h,c}", 'src/webp/*.h'
    wp.private_header_files = "src/utils/*.h", "src/dsp/*.h", "src/enc/*.h", "src/dec/*.h", 'src/webp/*.h'

  end

end