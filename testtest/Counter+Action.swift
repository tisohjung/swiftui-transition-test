//
//  Counter+Action.swift
//  testtest
//
//  Created by Minho Yi on 2023/04/18.
//

import ComposableArchitecture

extension Counter {
  public enum Action: Equatable, BindableAction {
    case onAppear
    case binding(BindingAction<Counter.State>)
    case increase
    case decrease
  }
}
