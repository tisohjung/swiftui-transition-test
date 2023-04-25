//
//  Counter.swift
//  testtest
//
//  Created by Minho Yi on 2023/04/18.
//

import ComposableArchitecture
import Dependencies

public struct Counter: ReducerProtocol {
  @Dependency(\.counterEnvironment) private var environment

  public var body: some ReducerProtocol<State, Action> {
    BindingReducer()
    Reduce { state, action in
      switch action {
      case .onAppear:
        return .none

      case .binding:
        return .none

      case .increase:
        state.count += 1
        return .fireAndForget {
        }

      case .decrease:
        state.count -= 1
        return .none
      }
    }
  }

  public init() {}
}
