//
//  ProfileViewModel.swift
//  Messenger
//
//  Created by Ivan Potapenko on 13.12.2021.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel{
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
