Pod::Spec.new do |spec|
  spec.name         = "Authorization"
  spec.version      = "0.0.1"
  spec.summary      = "Authorization"
  spec.description  = <<-DESC
  Authorization feature module
                   DESC
  spec.homepage     = "https://github.com/iosdevelopmentzp"
  spec.license      = "BSD"
  spec.author       = { "Dmitriy Vorko" => "dimavorko88@gmail.com" }
  spec.platform     = :ios, "12.0"  
  spec.swift_version = "5.0"
  spec.source       = { :path => "." }
  spec.source_files  = "Authorization/**/*.{h,m,swift}"
  spec.resources = ["Authorization/**/*.{lproj}"]
  spec.frameworks = "Foundation", "UIKit"

  # External Dependencies

  spec.dependency "RxSwift"
  spec.dependency "RxCocoa"
  spec.dependency "SnapKit"

  # Internal Core Dependencies

  spec.dependency "Core"
end
