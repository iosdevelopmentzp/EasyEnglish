Pod::Spec.new do |spec|
  spec.name         = "Coordinator"
  spec.version      = "0.0.1"
  spec.summary      = "Coordinator"
  spec.description  = <<-DESC
  Base structures
                   DESC
  spec.homepage     = "https://github.com/iosdevelopmentzp"
  spec.license      = "BSD"
  spec.author       = { "Dmitriy Vorko" => "dimavorko88@gmail.com" }
  spec.platform     = :ios, "12.0"  
  spec.swift_version = "5.0"
  spec.source       = { :path => "." }
  spec.source_files  = "Coordinator/**/*.{h,m,swift}"
  spec.resources = ["Coordinator/**/*.{lproj}"]
  spec.frameworks = "Foundation", "UIKit"
end
