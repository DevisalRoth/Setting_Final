//
//  VMSetting.swift
//  SettingDemo
//
//  Created by Pheayuth's iMac on 3/1/24.
//

import UIKit

class VMSetting{
    
    var moreSettingData = [SettingModel]()
    var profile = [SettingModel]()
    var musicData = [SettingModel]()
    var networkData = [SettingModel]()
    var soundData = [SettingModel]()
    
    var containerData = [Container<Any>]()
    
    func initData(){
         profile  = [
            SettingModel(subTitle: "CHOU Visalroth", imageView:  "user_unknown", description: "Apple ID, iCloud, Media & Purchases "),
            SettingModel(subTitle: "", imageView:  "", description: "Apple ID Suggestions"),

        ]
        
        networkData = [
            SettingModel(subTitle: "Airplane Mode", imageView:  "airplane_mode", description: ""),
            SettingModel(subTitle: "Wi-Fi", imageView:  "wifi", description: "",status: "Not Connected"),
            SettingModel(subTitle: "Bluetooth", imageView: "bluetooth", description: "", status: "Not Connected"),
            SettingModel(subTitle: "Cellular", imageView: "cellular", description: ""),
            SettingModel(subTitle: "Personal Hotspot", imageView: "hotspot", description: ""),
        ]
        
        soundData = [
            SettingModel(subTitle: "Notifiactions", imageView:  "notification", description: ""),
            SettingModel(subTitle: "Sounds & Haptics", imageView: "sound", description: ""),
            SettingModel(subTitle: "Focus", imageView:  "focus", description: ""),
            SettingModel(subTitle: "Screen Time", imageView:  "screen_time", description: ""),
            
        ]
        
        
        

        containerData = [
            Container(value: "", rowType: .EMPTY),
            Container(value: profile, rowType: .PROFILE),
            Container(value: musicData, rowType: .NETWORK),
            Container(value: soundData, rowType: .SOUND),
        ]
    }
    
    
    
}
