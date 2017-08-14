Pod::Spec.new do |spec|
  spec.name         = 'SLParser'
  spec.author       = 'Serhii Londar'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/serhii-londar/slparser.git'
  spec.version      = '0.1'
  spec.summary      = 'Json to model parser for iOS and OS X implemented with Runtime'
  spec.source       = { :git => 'https://github.com/serhii-londar/slparser.git', :tag => spec.version }
  spec.requires_arc = true
  spec.platform     = :ios, "9.0"

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |sp|
    sp.source_files = 'SLParser/Source/**/*.{h,m}'
  end
end
