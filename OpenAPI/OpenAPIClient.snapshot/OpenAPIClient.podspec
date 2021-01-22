Pod::Spec.new do |s|
  s.name = 'OpenAPIClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0-beta'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0-beta' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = '-'
  s.summary = '-'
  s.source_files = 'OpenAPIClient/Classes/**/*.swift'
end
