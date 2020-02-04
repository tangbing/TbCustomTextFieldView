#
#  Be sure to run `pod spec lint CustomAlertViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

  Pod::Spec.new do |s|

  s.name         = "TbCustomTextFieldView"
  s.version      = "1.0.0"
  s.summary      = "A custome textFieldView"
  s.homepage     = "https://github.com/tangbing/TbCustomTextFieldView"
  s.license      = "MIT"
  s.author       = { "tbit" => "tbit_144135@sina.com" }
  s.source       = { :git => "https://github.com/tangbing/TbCustomTextFieldView.git", :tag => "#{s.version}" }
  s.source_files  = "TbCustomTextFieldView/**/*.{h,m}"
  s.dependency "Masonry", "~> 1.1.0"

end
