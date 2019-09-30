require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RCTKeyCommands"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-key-commands
                   DESC
  s.homepage     = "https://github.com/adamtew/react-native-key-commands"
  s.license      = "MIT"
  s.authors      = { "Adam Tew" => "email@gmail.com" }
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/adamtew/react-native-key-commands.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end
