//
//  Router.swift
//  RouterTest
//
//  Created by nanashiki on 2020/03/31.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

protocol UserDetailWireframe {
    func generateView(user: User) -> AnyView
}
