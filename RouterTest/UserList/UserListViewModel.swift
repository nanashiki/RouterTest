//
//  UserListViewModel.swift
//  RouterTest
//
//  Created by nanashiki on 2020/03/31.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import Combine
import Foundation

class UserListViewModel: ObservableObject {
    @Published var users: [User] = []
    

    init() {
        // mock
        self.users = [
            User(id: "a", name: "a"),
            User(id: "b", name: "b"),
            User(id: "c", name: "c")
        ]
    }
}
