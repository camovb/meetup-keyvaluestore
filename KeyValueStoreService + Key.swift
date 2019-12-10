//
//  KeyValueStoreService + Key.swift
//  KeyValueStore
//
//  Created by Camilo Vera Bezmalinovic on 12/5/19.
//  Copyright © 2019 Camilo Vera Bezmalinovic. All rights reserved.
//

extension KeyValueStoreService.Key {
  static var notificationsEnabled: KeyValueStoreService.Key<Bool> {
    return .init("settings.notifications.enabled")
  }
  static var preferredLanguage: KeyValueStoreService.Key<String> {
    return .init("settings.locale.language")
  }
  static var maxSearchRadius: KeyValueStoreService.Key<Float> {
    return .init("settings.search.maxRadius")
  }
}
