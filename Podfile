platform :ios, '12.0'

use_frameworks!
source 'https://github.com/CocoaPods/Specs.git'

inhibit_all_warnings!

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

end

def feature_pods

end

target 'EasyEnglish' do
	use_frameworks!
	project_utils_pods
	core_pods
	feature_pods
end

post_install do |installer|
	installer.pods_project.targets.each do |target|
		target.build_configurations.each do |config|
			config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
		end
	end
end