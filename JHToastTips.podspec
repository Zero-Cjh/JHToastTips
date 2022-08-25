
Pod::Spec.new do |spec|

  spec.name         = "JHToastTips"
  
  spec.version      = "1.0.1"
  
  spec.summary      = "A simple Toast with iOS."

  spec.description  = "A simple Toast with iOS, you can use in your project."

  spec.homepage     = "https://github.com/Zero-Cjh"
  
  spec.license      = { :file => "FILE_LICENSE" }

  spec.author       = { "Zero-Cjh" => "876832130@qq.com" }

  spec.platform     = :ios, "13.0"

  spec.source       = { :git => "https://github.com/Zero-Cjh/JHToastTips.git", :tag => "#{spec.version}" }
  
  spec.source_files  = "Package/Sources/JHToastTips/*.swift", "Package/Sources/JHToastTips/**/*.swift"
  
  spec.framework = 'UIKit', 'Foundation'
  spec.dependency 'SnapKit'
  
  spec.requires_arc = true
  
  spec.swift_versions = ['5.0']

end
