//
//  UserListView.swift
//  RouterTest
//
//  Created by nanashiki on 2020/03/31.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel = UserListViewModel()
    let userDetailWireframe: UserDetailWireframe
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                NavigationLink(destination: self.userDetailWireframe.generateView(user: user)) {
                    Text(user.name)
                }
            }
            .navigationBarTitle("UserList", displayMode: .inline)
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView(
            userDetailWireframe: UserDetailRouter()
        )
    }
}
