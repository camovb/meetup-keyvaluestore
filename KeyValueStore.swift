//
//  KeyValueStore.swift
//  KeyValueStore
//
//  Created by Camilo Vera Bezmalinovic on 12/2/19.
//  Copyright © 2019 Camilo Vera Bezmalinovic. All rights reserved.
//


internal protocol KeyValueStore: class {
  // MARK: Getters
  func bool(forKey defaultName: String) -> Bool
  func string(forKey defaultName: String) -> String?
  func float(forKey defaultName: String) -> Float
  func double(forKey defaultName: String) -> Double
  func integer(forKey defaultName: String) -> Int
  
  // MARK: Setters
  func set(_ value: Bool, forKey defaultName: String)
  func set(_ value: Float, forKey defaultName: String)
  func set(_ value: Double, forKey defaultName: String)
  func set(_ value: Int, forKey defaultName: String)
  func set(_ value: String?, forKey defaultName: String)
}

