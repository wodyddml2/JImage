# JImage

[![CI Status](https://img.shields.io/travis/wodyddml2/JImage.svg?style=flat)](https://travis-ci.org/wodyddml2/JImage)
[![Version](https://img.shields.io/cocoapods/v/JImage.svg?style=flat)](https://cocoapods.org/pods/JImage)
[![License](https://img.shields.io/cocoapods/l/JImage.svg?style=flat)](https://cocoapods.org/pods/JImage)
[![Platform](https://img.shields.io/cocoapods/p/JImage.svg?style=flat)](https://cocoapods.org/pods/JImage)

## Example
```
let url: String = "https://apod.nasa.gov/apod/image/2201/OrionStarFree3_Harbison_5000.jpg"

JImage.example(with: url, completion: { image in
   DispatchQueue.main.async {
       self.imageView.image = image
   }
})
```
## Requirements
- iOS 15.0

## Installation
### Swift Package Manager
```
https://github.com/wodyddml2/JImage
```
<br/>

JImage is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JImage'
```

## Author

- wodyddml2
- Email: wodyddml4@naver.com

## License

JImage is available under the MIT license. See the LICENSE file for more info.
