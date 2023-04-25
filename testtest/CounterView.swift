//
//  CounterView.swift
//  testtest
//
//  Created by Minho Yi on 2023/04/18.
//

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct CounterView: View {
  public var body: some View {
    List {
      Text("Hello, Counter!")
    }
    .task {
      await viewStore
        .send(.onAppear)
        .finish()
    }
  }

  @ObservedObject
  private var viewStore: ViewStoreOf<Counter>
  private let store: StoreOf<Counter>

  public init(store: StoreOf<Counter>) {
    self.viewStore = .init(store)
    self.store = store
  }
}

// MARK: - Preview

struct CounterView_Previews: PreviewProvider {
  static var previews: some View {
    CounterView(store: store)
      .previewLayout(.sizeThatFits)
  }

  static let store: StoreOf<Counter> = .init(
    initialState: .init(),
    reducer: Counter()
  )
}
