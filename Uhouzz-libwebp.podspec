
Pod::Spec.new do |s|
  s.name            = "Uhouzz-libwebp"
  s.version         = "0.5.1.3"
  s.summary         = "Library to encode and decode images in WebP format."
  s.homepage        = "https://github.com/Uhouzz/libwebp"
  s.license         = { :type => "BSD", :file => "COPYING" }
  s.author          = "Google Inc."
  s.platform        = :ios, "7.0.0"
  s.source          = { :git => "https://github.com/Uhouzz/libwebp.git", :tag => "v#{s.version}" }

  s.compiler_flags  = "-D_THREAD_SAFE"
  s.requires_arc    = false 

  # Subspecs
  s.subspec 'webp' do |wp|
    wp.source_files = 'src/webp/*.h'
    wp.header_dir = 'webp'
  end

  s.subspec 'core' do |ce|
    ce.source_files = 'src/utils/*.{h,c}','src/dsp/*.{h,c}','src/enc/*.{h,c}','src/dec/*.{h,c}'
    ce.dependency "Uhouzz-libwebp/webp"
  end

  s.subspec 'utils' do |ce|
    ce.dependency "Uhouzz-libwebp/core"
  end

  s.subspec 'dsp' do |ce|
    ce.dependency "Uhouzz-libwebp/core"
  end

  s.subspec 'enc' do |ce|
    ce.dependency "Uhouzz-libwebp/core"
  end

  s.subspec 'demux' do |ce|
    ce.source_files = 'src/demux/*.{h,c}'
    ce.dependency "Uhouzz-libwebp/core"
  end

  s.subspec 'mux' do |ce|
    ce.source_files = 'src/mux/*.{h,c}'
    ce.dependency "Uhouzz-libwebp/core"
  end


end