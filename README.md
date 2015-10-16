# ObserverManager

[![CI Status](http://img.shields.io/travis/timbodeit/ObserverManager.svg?style=flat)](https://travis-ci.org/timbodeit/ObserverManager)
[![Version](https://img.shields.io/cocoapods/v/ObserverManager.svg?style=flat)](http://cocoapods.org/pods/ObserverManager)
[![License](https://img.shields.io/cocoapods/l/ObserverManager.svg?style=flat)](http://cocoapods.org/pods/ObserverManager)
[![Platform](https://img.shields.io/cocoapods/p/ObserverManager.svg?style=flat)](http://cocoapods.org/pods/ObserverManager)

Closure Support and automatic deregistering for Key Value Observing in Swift.

## Requirements

This version of ObserverManager is meant to be used with Swift 2.0

## Usage

```swift
import Foundation
import ObserverManager

class SomeObservingClass {

    let foo: Foo
    let observerManager = ObserverManager()

    init(foo: Foo) {
        self.foo = foo
        
        observerManager.registerObserverForObject(foo, keyPath: "bar") { bar in
        	// Do stuff
        	[...]
        }
    }
}
```

## Interface 

```swift
/**
A class that can be used to sign up for Key-Value Observing by
passing a Swift closure.

Every object, that uses KVO should have its own NotificationManager.
All observers are automatically deregistered when the object is deallocated.
*/
public class ObserverManager : NSObject {

/**
Registers a new observer for a given object and keypath.

- parameter object:  The object to observe
- parameter keyPath: The keyPath to observe
- parameter block:   The block that is called when the value changed. Gets called with the new value.
*/
public func registerObserverForObject(object: NSObject, keyPath: String, block: (value: NSObject) -> ())

/**
Removes all observers that observe the given keypath on the given object.
*/
public func deregisterObserversForObject(object: NSObject, andKeyPath keyPath: String)

/**
Removes all observers that observe any keypath on the given object.
*/
public func deregisterObserversForObject(object: NSObject)

/**
Removes all observers that observe any keypath on any object.
*/
public func deregisterAllObservers()

}
```

## Installation

ObserverManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ObserverManager"
```

## Author

Tim Bodeit, tim@bodeit.com

## License

ObserverManager is available under the MIT license. See the LICENSE file for more info.
