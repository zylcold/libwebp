
Pod::Spec.new do |s|
  s.name            = "libwebp"
  s.version         = "1.0.2"
  s.summary         = "Library to encode and decode images in WebP format."
  s.homepage        = "https://github.com/zylcold/libwebp"
  s.license         = { :type => "BSD", :file => "COPYING" }
  s.author          = "Google Inc."
  s.platform        = :ios, "7.0.0"
  s.source          = { :git => "https://github.com/zylcold/libwebp.git", :tag => "v#{s.version}" }

  s.compiler_flags  = "-D_THREAD_SAFE"
  s.requires_arc    = false 

  s.xcconfig = { 
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libwebp/core/**'
  }

  # Subspecs
  s.subspec 'webp' do |wp|
    wp.source_files = 'src/webp/*.h'
    wp.header_dir = "src/webp"
  end
  
  s.subspec 'utils' do |wp|
    wp.source_files = 'src/utils/*.{h,c}'
    wp.header_dir = "src/utils"
  end
  s.subspec 'dsp' do |wp|
    wp.source_files = 'src/dsp/*.{h,c}'
    wp.header_dir = "src/dsp"
  end
  s.subspec 'enc' do |wp|
    wp.source_files = 'src/enc/*.{h,c}'
    wp.header_dir = "src/enc"
  end

  s.subspec 'dec' do |wp|
    wp.source_files = 'src/dec/*.{h,c}'
    wp.header_dir = "src/dec"
  end

  s.subspec 'demux' do |wp|
    wp.source_files = "src/demux/*.{h,c}"
    wp.header_dir = "src/demux"
  end
  
  s.subspec 'mux' do |wp|
    wp.source_files = "src/mux/*.{h,c}"
    wp.header_dir = "src/mux"
  end

end
