Pod::Spec.new do |s|
  s.name = 'MetaFabSwift5'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.2.0'
  s.source = { :git => 'git@github.com:MetaFabInc/metafab-swift5.git', :tag => s.version.to_s }
  s.authors = 'MetaFab&lt;dev@trymetafab.com&gt;'
  s.social_media_url = 'https://twitter.com/tryMetaFab'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/MetaFabInc/metafab-swift5'
  s.summary = 'Swift5 APIs for MetaFab services.'
  s.description = 'Swift5 APIs for MetaFab services. See https://github.com/MetaFabInc/metafab-swift5 for complete documentation.'
  s.documentation_url = 'https://github.com/MetaFabInc/metafab-swift5'
  s.source_files = 'MetaFabSwift5/Classes/MetaFabSwift5/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
