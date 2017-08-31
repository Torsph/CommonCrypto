Pod::Spec.new do |s|
  s.name         = "CommonCrypto"
  s.version      = "1.0.0"
  s.summary      = "CommonCrypto!"
  s.author       = "Torsph"
  s.homepage     = "https://github.com/torsph/commoncrypto"
  s.license      = { :type => 'MIT' }

  s.source       = { :git => "git@github.com:torsph/CommonCrypto.git'" }
  s.source_files = 'CommonCrypto/*.{h,swift}'
  s.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/CommonCrypto/CommonCrypto/CCommonCrypto' }
  s.preserve_paths = 'CommonCrypto/CCommonCrypto/module.modulemap'
end

