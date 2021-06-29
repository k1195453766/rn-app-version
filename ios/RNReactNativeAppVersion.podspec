
Pod::Spec.new do |s|
  s.name         = "RNReactNativeAppVersion"
  s.version      = "1.0.0"
  s.summary      = "RNReactNativeAppVersion"
  s.description  = <<-DESC
                  RNReactNativeAppVersion
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNReactNativeAppVersion.git", :tag => "master" }
  s.source_files  = "RNReactNativeAppVersion/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  