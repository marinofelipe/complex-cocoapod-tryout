# Complex Cocoapod tryout
To test CocoaPods with many subspecs and cross dependencies

### Structure
This example has a [podspec]() that declares:
- Subspecs with inner subspecs
- Subspecs that has other subspecs as dependencies

``` Ruby
s.subspec 'Extensions' do |ss|
    ss.requires_arc = true
    ss.source_files = "MultiSpecs/Extensions"

    ss.subspec 'UIKit' do |sss|
      sss.requires_arc = true
      sss.source_files = "MultiSpecs/Extensions/UIKit"
    end

    ss.subspec 'Foundation' do |sss|
      sss.requires_arc = true
      sss.source_files = "MultiSpecs/Extensions/Foundation"
    end
  end

  s.subspec 'Log' do |ss|
    ss.requires_arc = true
    ss.source_files = "MultiSpecs/Log"
    ss.ios.dependency 'MultiSpecs/Extensions/Foundation'
  end
```

### Idea
Validate a complex Pod structure that will serve as a core framework with inner frameworks
