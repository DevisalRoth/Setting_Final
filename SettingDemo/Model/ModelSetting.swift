//
//  ModelSetting.swift
//  SettingDemo
//
//  Created by Pheayuth's iMac on 3/1/24.
//

import UIKit

enum TypeSetting {
     case PROFILE
     case EMPTY
     case NETWORK
     case SOUND
     case GENERAL
     case MUSIC
}
struct Container<T> {
    var value: T?
    var rowType: TypeSetting
}
struct SettingModel {
    var subTitle: String?
    var imageView: String?
    var description: String?
    var status: String?
}
