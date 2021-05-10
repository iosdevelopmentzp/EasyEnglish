Pod::Spec.new do |spec|
  spec.name         = "Coordinators"
  spec.version      = "0.0.1"
  spec.summary      = "Coordinators"
  spec.description  = <<-DESC
  Coordinators of Application
                   DESC
  spec.homepage     = "https://github.com/iosdevelopmentzp"
  spec.license      = "BSD"
  spec.author       = { "Dmitriy Vorko" => "dimavorko88@gmail.com" }
  spec.platform     = :ios, "12.0"  
  spec.swift_version = "5.0"
  spec.source       = { :path => "." }
  spec.source_files  = "Coordinators/**/*.{h,m,swift}"
  spec.resources = ["Coordinators/**/*.{lproj}"]
  spec.frameworks = "Foundation", "UIKit"

  # External Dependencies
  
  # Internal Feature Dependencies
  
  spec.dependency "Authorization"

  # Internal Core Dependencies

  spec.dependency "Core"
  spec.dependency "Coordinator"

end
