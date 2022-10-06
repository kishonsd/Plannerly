//
//  DataManager.swift
//  Plannerly
//
//  Created by kishon daniels on 10/6/22.
//

import Foundation

public class DataManager {
    
    //Get document directory
    static fileprivate func getDocumentDirectory () -> URL {
        if let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            return url
        } else {
            fatalError("Unable to access document direcory")
        }
    }
    
    //Save any kind of codable objects
    static func save <T:Encodable> ( object:T, with fileName:String ) {
        let url = getDocumentDirectory().appendingPathComponent(fileName, isDirectory: false)
        
        let encoder = JSONEncoder()
        
        do {
            let data = try encoder.encode(object)
            if FileManager.default.fileExists(atPath: url.path) {
                try FileManager.default.removeItem(at: url)
            }
            FileManager.default.createFile(atPath: url.path, contents: data, attributes: nil)
        }catch{
            fatalError(error.localizedDescription)
        }
    }
    
    //Load any kind of codable objects
    static func load <T: Decodable> ( fileName:String, with type:T) -> T {
        let url = getDocumentDirectory().appendingPathComponent(fileName, isDirectory: false)
        if !FileManager.default.fileExists(atPath: url.path) {
            fatalError("File not found at path \(url.path)")
        }
    
        if let data = FileManager.default.contents(atPath: url.path) {
            
        }
    }
    
    
    //Load data from a file
    
    //Load all files from a directory
    
    //Delete a file
}
