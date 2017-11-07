Pod::Spec.new do |s|

  s.name         = "ZBarSDK"
  s.version      = "1.3.1"
  s.summary      = "QR and barcode scan library."

  s.description  = <<-DESC
  ZBar is an open source software suite for reading bar codes from various sources, such as video streams, image files and raw intensity sensors. It supports many popular symbologies (types of bar codes) including EAN-13/UPC-A, UPC-E, EAN-8, Code 128, Code 39, Interleaved 2 of 5 and QR Code.
                   DESC

  s.homepage     = "hhttp://zbar.sourceforge.net/"

  s.license      = "GNU LGPL 2.1"


  s.author             = { "Jeff Brown" => "spadix@users.sourceforge.net" }

  s.platform     = :osx

  s.source       = { :git => "https://github.com/ZBar/ZBar.git", :branch => "master" }


  s.source_files  = "include/zbar.h", "include/zbar/**.h"
 
  s.header_mappings_dir = 'include/'
  
  s.header_dir = 'include/zbar'
  
  s.public_header_files = "include/zbar.h"

  s.frameworks = "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "QuartzCore"

  s.library   = "iconv"
 
  s.requires_arc = false

  s.compiler_flags = "-w -Wno-documentation-deprecated-sync"
end
