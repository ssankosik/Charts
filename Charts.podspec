Pod::Spec.new do |s|
  s.name             = 'Charts'
  s.version          = '4.1.0'
  s.summary          = 'Static version of swift Charts pod (https://github.com/ChartsOrg/Charts, tag: 4.1.0)'
  s.homepage         = 'https://github.com/ssankosik/Charts'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ssankosik' => 'https://github.com/ssankosik/Charts' }

  s.ios.deployment_target = '11.0'
  s.swift_versions = '5.7'
  s.cocoapods_version = '>= 1.5.0'

  s.source           = { :git => 'https://github.com/ssankosik/Charts.git' }
  s.default_subspec  = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "Charts/Source/**/*.{swift}"
    ss.dependency 'SwiftAlgorithms', '~> 1.0'
  end
end