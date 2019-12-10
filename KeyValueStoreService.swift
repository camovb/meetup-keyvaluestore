//
//  KeyValueStoreService.swift
//  KeyValueStore
//
//  Created by Camilo Vera Bezmalinovic on 12/5/19.
//  Copyright © 2019 Camilo Vera Bezmalinovic. All rights reserved.
//

internal final class KeyValueStoreService {
  internal struct Key<T: KeyValueType> {
    let defaultName: String
    init(_ defaultName: String) { self.defaultName = defaultName }
  }
  
  private let store: KeyValueStore

  init(store: KeyValueStore) {
    self.store = store
  }
}

extension KeyValueStoreService {
  final subscript(key: Key<Bool>) -> Bool {
    set { store.set(newValue, forKey: key.defaultName) }
    get { return store.bool(forKey: key.defaultName) }
  }
  final subscript(key: Key<String>) -> String? {
    set { store.set(newValue, forKey: key.defaultName) }
    get { return store.string(forKey: key.defaultName) }
  }
  final subscript(key: Key<Float>) -> Float {
    set { store.set(newValue, forKey: key.defaultName) }
    get { return store.float(forKey: key.defaultName) }
  }
  final subscript(key: Key<Double>) -> Double {
    set { store.set(newValue, forKey: key.defaultName) }
    get { return store.double(forKey: key.defaultName) }
  }
  final subscript(key: Key<Int>) -> Int {
    set { store.set(newValue, forKey: key.defaultName) }
    get { return store.integer(forKey: key.defaultName)}
  }
}
