Pod::Spec.new do |spec|
  spec.name         = "AppResources"
  spec.version      = "0.0.1"
  spec.summary      = "AppResources"
  spec.description  = <<-DESC
  Application resources such as images, localized strings, fonts and etc.
                   DESC
  spec.homepage     = "https://github.com/iosdevelopmentzp"
  spec.license      = "BSD"
  spec.author       = { "Dmitriy Vorko" => "dimavorko88@gmail.com" }
  spec.platform     = :ios, "12.0"  
  spec.swift_version = "5.0"
  spec.source       = { :path => "." }
  spec.source_files  = "AppResources/**/*.{h,m,swift}"
  spec.resources = ["AppResources/**/*.{lproj,xcassets,json,ttf,strings,stringsdict}"]
  spec.frameworks = "Foundation", "UIKit"
  
end
