//
//  DefaultsStrorage.swift
//  TwitterClone
//
//  Created by Vasif Mehdi on 27.09.23.
//

import Foundation

enum DefaultsStorageKey: String {
    case UD_KEY_LOGIN = "login"
    case UD_KEY_USER = "user"
}

class DefaultsStorage {
    
    // MARK: - String
    class func set(string: String, by key: DefaultsStorageKey) {
        UserDefaults.standard.set(string, forKey: key.rawValue)
    }
    
    class func getString(by key: DefaultsStorageKey) -> String {
        return UserDefaults.standard.string(forKey: key.rawValue) ?? ""
    }
    
    // MARK: - Int
    class func set(int: Int, by key: DefaultsStorageKey) {
        UserDefaults.standard.set(int, forKey: key.rawValue)
    }
    
    class func getInteger(by key: DefaultsStorageKey) -> Int {
        return UserDefaults.standard.integer(forKey: key.rawValue)
    }
    
    // MARK: - Float
    class func set(float: Float, by key: DefaultsStorageKey) {
        UserDefaults.standard.set(float, forKey: key.rawValue)
    }
    
    class func getFloat(by key: DefaultsStorageKey) -> Float {
        return UserDefaults.standard.float(forKey: key.rawValue)
    }
    
    // MARK: - Bool
    class func set(bool: Bool, by key: DefaultsStorageKey) {
        UserDefaults.standard.set(bool, forKey: key.rawValue)
    }
    
    class func getBool(by key: DefaultsStorageKey) -> Bool {
        return UserDefaults.standard.bool(forKey: key.rawValue)
    }
    
    // MARK: - User
    
    class func getUser() -> User? {
        if let user: User = DefaultsStorage.getEntity(by: .UD_KEY_USER) {
            return user
        }
        return nil
    }
    class func setUser(user: User?) {
        DefaultsStorage.set(entity: user, by: .UD_KEY_USER)
    }
    
    // MARK: - Data
    class func set<T: Codable>(entity: T, by key: DefaultsStorageKey) {
        if let encoded = try? JSONEncoder().encode(entity) {
            UserDefaults.standard.set(encoded, forKey: key.rawValue)
        }
    }
    
    class func getEntity<T: Codable>(by key: DefaultsStorageKey) -> T? {
        guard let data = UserDefaults.standard.value(forKey: key.rawValue) as? Data else { return nil }
        let entity = try? JSONDecoder().decode(T.self, from: data)
        return entity
    }
    
    
    // MARK: - Delete
    class func delete(by key: DefaultsStorageKey) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}
