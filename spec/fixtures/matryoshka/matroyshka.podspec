Pod::Spec.new do |s|
  s.name             = "matroyshka"
  s.version          = "1.0.0"
  s.author           = { "Matryona Malyutin" => "matryona@malyutin.local" }
  s.summary          = "👩‍👩‍👧"
  s.description      = "Four levels: outmost (root), outer, inner"
  s.homepage         = "http://httpbin.org/html"
  s.source           = { :git => "http://malyutin.local/matroyshka.git", :tag => s.version.to_s }
  s.license          = 'MIT'

  s.source_files = 'Outmost.{h,m}'

  s.subspec 'Outer' do
    s.source_files = 'Outer/Outer.{h,m}'

    s.subspec 'Inner' do
      s.source_files = 'Inner/Inner.{h,m}'
    end
  end
end
