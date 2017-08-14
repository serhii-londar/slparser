platform :ios, '9.0'

workspace 'SLParser'
project 'SLParser.xcodeproj'
project 'Example.xcodeproj'

target 'SLParser' do
  project 'SLParser.xcodeproj'
end

target 'Example' do
    pod 'SLParser', :path => 'SLParser.podspec'
    project 'Example.xcodeproj'
end
