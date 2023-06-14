#
# Be sure to run `pod lib lint ApiServices.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ApiServices'
  s.version          = '0.2.0'
  s.summary          = 'A short description of ApiServices.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

   s.homepage         = 'https://github.com/sanguHiremath/firebaselogin'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '<sangamesh' => 'sangameshbh41@gmail.com' }
  s.source           = { :git => "https://github.com/sanguHiremath/firebaselogin.git", :tag => s.version }
  s.source_files     =   'ApiServices/**/*.swift'

  s.ios.deployment_target = '14.0'
  s.swift_version = "5.7"
 
end
