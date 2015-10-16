Pod::Spec.new do |s|
  s.name             = "ObserverManager"
  s.version          = "0.1.0"
  s.summary          = "Simple KVO in Swift"

  s.description      = <<-DESC
                       Closure Support and automatic deregistering for Key Value Observing in Swift
                       DESC

  s.homepage         = "https://github.com/timbodeit/ObserverManager"
  s.license          = 'MIT'
  s.author           = { "Tim Bodeit" => "tim@bodeit.com" }
  s.source           = { :git => "https://github.com/timbodeit/ObserverManager.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'

  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
