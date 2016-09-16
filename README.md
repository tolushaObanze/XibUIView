# XibUIView

UIView subclass, to easy load "YourCustomView.xib".

This class adds a `contentView` property and custom initializer:
`init?(coder aDecoder: NSCoder, xibIdentifier: String)`

Subclasses, to load view from xib must use the following syntax:
```swift
required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, xibIdentifier: "YourCustomClassXibName")
}
```

