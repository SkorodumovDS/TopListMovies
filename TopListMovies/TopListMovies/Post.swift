//
//  Post.swift
//  TopListMovies
//
//  Created by Skorodumov Dmitry on 04.12.2023.
//

import Foundation
import SwiftUI

public struct Post : Identifiable{
    public let id =  UUID()
    
    public let title: String
    public let description: String
    public let image: Image
}

