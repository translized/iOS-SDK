Pod::Spec.new do |spec|
  spec.name         = "Translized"
  spec.version      = "1.2.0"
  spec.summary      = "Translized SDK for OTA localization for iOS."
  spec.description  = <<-DESC
                        Publish your translations faster and simpler than ever before. Create release on Translized dashboard and watch as new translations appear in your iOS app.

                        Features
                        - Over-the-air (OTA) localization
                        - NSBundle swizzling for seamless integration
                        - Switch language dinamically
                   DESC

  spec.homepage     = "https://www.translized.com"
  spec.license      = { :type => "Custom", :file => 'LICENSE.md' }
  spec.author       = { "Translized" => "info@translized.com" }

  spec.platform     = :ios
  spec.platform     = :ios, "10.0"

  spec.source       = { :git => "https://github.com/translized/iOS-SDK.git", :tag => "#{spec.version}" }

  spec.preserve_paths      = 'Translized.xcframework'
  spec.vendored_frameworks = 'Translized.xcframework'

  spec.swift_version       = '5.0'
  spec.requires_arc        = true
end
