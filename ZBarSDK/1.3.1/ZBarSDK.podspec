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


  s.source_files  = "include/zbar.h", "include/zbar/**.h", "iphone/config.h", "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.{h, c}",
"zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.{h, c}",
"zbar/qrcode/*.{h, c}"
       
  s.private_header_files = "iphone/config.h", "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.h",
"zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.h",
"zbar/qrcode/*.h"

  s.public_header_files = "include/*.h", "include/zbar/**.h"
     
  s.header_dir = './'
   
  #s.header_mappings_dir = "include"

  s.frameworks = "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "QuartzCore"

  s.library   = "iconv"
 
  s.requires_arc = false

  s.compiler_flags = "-w -Wno-documentation-deprecated-sync"
end
