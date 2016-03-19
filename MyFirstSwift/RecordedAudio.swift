//
//  RecordedAudio.swift
//  MyFirstSwift
//
//  Created by Nicholas Allio on 28/09/15.
//  Copyright © 2015 Nicholas Allio. All rights reserved.
//

import Foundation

class RecordedAudio {
    var filePathUrl: NSURL!
    var title: String!

    init(withTitle title: String, andFilePathURL filePathUrl: NSURL) {
        self.filePathUrl = filePathUrl
        self.title = title
    }
}
