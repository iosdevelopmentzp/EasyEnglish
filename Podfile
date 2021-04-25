platform :ios, '12.0'

source 'https://github.com/CocoaPods/Specs.git'
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

install! 'cocoapods',
:clean => true,
:disable_input_output_paths => true

def project_utils_pods
  # Project utils
  pod 'SwiftLint', '0.40.3'
  pod 'SwiftFormat/CLI', '0.46.2'
  pod 'SwiftGen', '6.2.1'
end

def core_pods
  pod "Core", :path => "./Modules/Core"
end

def external_pods
  
end

def feature_pods
  
end

inhibit_all_warnings!

target 'EasyEnglish' do
  use_frameworks!
  project_utils_pods
  external_pods
  core_pods
  feature_pods
end

pre_install do |installer|
  Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.name.include?("Debug")
        config.build_settings["OTHER_SWIFT_FLAGS"] ||= ['$(inherited)', '-DDEBUG']
      end
      
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      config.build_settings['CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER'] = 'NO'
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
      config.build_settings['DEBUG_INFORMATION_FORMAT'] = 'dwarf'
      config.build_settings['ENABLE_BITCODE'] = 'YES'
    end
  end
end
