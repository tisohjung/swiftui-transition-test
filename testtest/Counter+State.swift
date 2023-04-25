//
//  Counter+State.swift
//  testtest
//
//  Created by Minho Yi on 2023/04/18.
//

import ComposableArchitecture

extension Counter {
  public struct State: Equatable {
    var count: Int
    public init() {
      count = 0
    }
  }
}
