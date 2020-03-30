//
//  UserDetailView.swift
//  RouterTest
//
//  Created by nanashiki on 2020/03/31.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    
    var body: some View {
        Text(user.name)
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User(id: "a", name: "a"))
    }
}
