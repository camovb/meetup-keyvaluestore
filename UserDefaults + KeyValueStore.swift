//
//  UserDefaults + KeyValueStore.swift
//  KeyValueStore
//
//  Created by Camilo Vera Bezmalinovic on 12/2/19.
//  Copyright © 2019 Camilo Vera Bezmalinovic. All rights reserved.
//

import Foundation

extension UserDefaults : KeyValueStore {
  func set(_ value: String?, forKey defaultName: String) {
    set(value as Any, forKey: defaultName)
  }
}

