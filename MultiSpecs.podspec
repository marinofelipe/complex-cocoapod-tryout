Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "MultiSpecs"
  s.version      = "0.0.1"
  s.summary      = "Validates usage of Pods with one framework and many subspecs"

  s.homepage     = "https://github.com/marinofelipe/complex-cocoapod-tryout"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Felipe Lefèvre Marino" => "felipemarino91@gmail.com" }

  s.source       = { :git => "https://github.com/marinofelipe/complex-cocoapod-tryout.git", :tag => "#{s.version}" }

  s.ios.deployment_target = '9.0'

  s.swift_version = "4.2"
  s.source_files  = "MultiSpecs"


  s.subspec 'Extensions' do |ss|
    ss.requires_arc = true
    ss.source_files = "MultiSpecs/Extensions"

    ss.subspec 'UIKit' do |sss|
      sss.requires_arc = true
      sss.source_files = "MultiSpecs/Extensions/UIKit"
    end

    ss.subspec 'Foundation' do |sss|
      sss.requires_arc = true
      sss.source_files = "MultiSpecs/Extensions/Foundation"
    end
  end

  s.subspec 'Log' do |ss|
    ss.requires_arc = true
    ss.source_files = "MultiSpecs/Log"
    ss.ios.dependency 'MultiSpecs/Extensions/Foundation'
  end

end