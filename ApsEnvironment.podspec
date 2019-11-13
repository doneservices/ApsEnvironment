Pod::Spec.new do |s|
  s.name         = "ApsEnvironment"
  s.version      = %x(git describe --tags --abbrev=0).chomp
  s.summary      = "Get the current environment for push notifications"
  s.description  = "This is a microlibrary for getting the current environment for push notifications"
  s.homepage     = "https://github.com/doneservices/ApsEnvironment"
  s.license      = "MIT"
  s.author       = { "Linus Unnebäck" => "linus@folkdatorn.se" }

  s.swift_version         = "5.1"
  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/doneservices/ApsEnvironment.git", :tag => "#{s.version}" }
  s.source_files = "Sources/ApsEnvironment"
end
