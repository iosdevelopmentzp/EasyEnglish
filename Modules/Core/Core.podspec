Pod::Spec.new do |spec|
  spec.name         = "Core"
  spec.version      = "0.0.1"
  spec.summary      = "Core"
  spec.description  = <<-DESC
  Base structures
                   DESC
  spec.homepage     = "https://github.com/iosdevelopmentzp"
  spec.license      = "BSD"
  spec.author       = { "Dmitriy Vorko" => "dimavorko88@gmail.com" }
  spec.platform     = :ios, "12.0"  
  spec.swift_version = "5.0"
  spec.source       = { :path => "." }
  spec.source_files  = "Core/**/*.{h,m,swift}"
  spec.resources = ["Core/**/*.{lproj}"]
  spec.frameworks = "Foundation", "UIKit"
end
