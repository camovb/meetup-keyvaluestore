//
//  NSUbiquitousKeyValueStore+KeyValueStore.swift
//  KeyValueStore
//
//  Created by Camilo Vera Bezmalinovic on 12/2/19.
//  Copyright © 2019 Camilo Vera Bezmalinovic. All rights reserved.
//

import Foundation

extension NSUbiquitousKeyValueStore: KeyValueStore {
  // MARK: Getters
  func float(forKey defaultName: String) -> Float {
    return Float(double(forKey: defaultName))
  }
  
  func integer(forKey defaultName: String) -> Int {
    return Int(double(forKey: defaultName))
  }

// MARK: Setters
  func set(_ value: Float, forKey defaultName: String) {
    set(Double(value), forKey: defaultName)
  }
  
  func set(_ value: Int, forKey defaultName: String) {
    set(Double(value), forKey: defaultName)
  }
}

