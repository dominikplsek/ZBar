Pod::Spec.new do |s|

  s.name         = "zbar"
  s.version      = "1.3.1"
  s.summary      = "QR and barcode scan library."

  s.description  = <<-DESC
  ZBar is an open source software suite for reading bar codes from various sources, such as video streams, image files and raw intensity sensors. It supports many popular symbologies (types of bar codes) including EAN-13/UPC-A, UPC-E, EAN-8, Code 128, Code 39, Interleaved 2 of 5 and QR Code.
                   DESC

  s.homepage     = "http://zbar.sourceforge.net/"

  s.license      = "GNU LGPL 2.1"

  s.author       = { "Jeff Brown" => "spadix@users.sourceforge.net"  }

  s.platform     = :osx

  s.source       = { :http => 'https://github.com/dominikplsek/ZBar/releases/download/1.3.1/zbar.zip' }


  s.source_files  = "zbar.h", "zbar/**.h"

  s.public_header_files = "zbar.h", "zbar/**.h"
  
  s.header_mappings_dir = "zbar"
  
  s.vendored_libraries = "libzbar.0.dylib"

  s.frameworks = "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "QuartzCore"

  s.library   = "iconv"
 
  s.requires_arc = false

end
