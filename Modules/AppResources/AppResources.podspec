Pod::Spec.new do |spec|
  spec.name         = "AppResources"
  spec.version      = "0.0.1"
  spec.summary      = "Appplication Resources"
  spec.description  = <<-DESC
  Application resources contains all needed colors, fonts, strings
                   DESC
  spec.homepage     = "https://github.com/iosdevelopmentzp"
  spec.license      = "BSD"
  spec.author       = { "Dmitriy Vorko" => "dimavorko88@gmail.com" }
  spec.platform     = :ios, "12.0"  
  spec.swift_version = "5.0"
  spec.source       = { :path => "." }
  spec.source_files = "AppResources/**/*.{h,m,swift}"
  spec.resources = ["AppResources/**/*.{lproj,storyboard,xib,xcassets,json,ttf,strings,stringsdict}"]
  spec.frameworks = "Foundation", "UIKit"
end
