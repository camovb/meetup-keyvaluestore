//
//  KeyValueType.swift
//  KeyValueStore
//
//  Created by Camilo Vera Bezmalinovic on 12/3/19.
//  Copyright © 2019 Camilo Vera Bezmalinovic. All rights reserved.
//

import Foundation

internal protocol KeyValueType { }
extension Int: KeyValueType { }
extension String: KeyValueType { }
extension Float: KeyValueType { }
extension Double: KeyValueType { }
extension Bool: KeyValueType { }

