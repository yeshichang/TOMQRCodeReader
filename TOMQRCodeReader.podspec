Pod::Spec.new do |s|

    s.name         = "TOMQRCodeReader"
    s.version      = "1.00"
    s.summary      = "A small frame of a QR code"
    s.homepage     = "https://github.com/yeshichang/TOMQRCodeReader"
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { "yeshichang" => "15238280098@163.com" }
    s.platform     = :ios, "8.0"
    s.source       = { :git => "https://github.com/yeshichang/TOMQRCodeReader.git", :tag => s.version }
    s.source_files = 'TOMQRCodeReader/**/*.{h,m}'
    s.resource     = 'TOMQRCodeReader/BundleQR.bundle'
    s.requires_arc = true
    s.framework  = "UIKit"

end
