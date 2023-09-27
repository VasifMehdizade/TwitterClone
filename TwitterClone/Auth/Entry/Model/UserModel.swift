//
//  UserModel.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 27.09.23.
//

import Foundation

struct User: Codable {
    var name, surname, email, phone, password, birthday: String
}
