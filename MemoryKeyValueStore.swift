//
//  KeyArchiver + KeyValueStore.swift
//  KeyValueStore
//
//  Created by Camilo Vera Bezmalinovic on 12/2/19.
//  Copyright © 2019 Camilo Vera Bezmalinovic. All rights reserved.
//


internal class MemoryKeyValueStore {
  private var data: [String: Any?] = [:]
}

extension MemoryKeyValueStore: KeyValueStore {
  // MARK: Getters
  func bool(forKey defaultName: String) -> Bool {
    return data[defaultName] as? Bool ?? false
  }
  
  func string(forKey defaultName: String) -> String? {
    return data[defaultName] as? String
  }
  
  func float(forKey defaultName: String) -> Float {
    return data[defaultName] as? Float ?? 0
  }
  
  func double(forKey defaultName: String) -> Double {
    return data[defaultName] as? Double ?? 0
  }
  
  func integer(forKey defaultName: String) -> Int {
    return data[defaultName] as? Int ?? 0
  }
  
// MARK: Setters
  func set(_ value: Bool, forKey defaultName: String) {
    data[defaultName] = value
  }
  
  func set(_ value: String?, forKey defaultName: String) {
    data[defaultName] = value
  }
  
  func set(_ value: Float, forKey defaultName: String) {
    data[defaultName] = value
  }
  
  func set(_ value: Double, forKey defaultName: String) {
    data[defaultName] = value
  }
  
  func set(_ value: Int, forKey defaultName: String) {
    data[defaultName] = value
  }
}

