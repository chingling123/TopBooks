//
//  Books.swift
//  TopBooks
//
//  Created by Erik Nascimento on 2/15/16.
//  Copyright © 2016 2EG. All rights reserved.
//

import Foundation

class Books {
    
    private var _bName:String
    private var _bPublisher:String
    private var _bImageUrl:String
    private var _bAuthor:String
    private var _bImId:String
    private var _bLinkToiTunes:String
    private var _bSummary:String
    private var _bPrice:String
    private var _bReleaseDate:String
    private var _bGenre:String
    
    var vImageData:NSData?
    
    var bName:String{
        return _bName
    }
    
    var bPublisher:String{
        return _bPublisher
    }
    
    var bImageUrl:String{
        return _bImageUrl
    }
    
    var bAuthor:String{
        return _bAuthor
    }
    
    var bImId:String{
        return _bImId
    }
    
    var bLinkToiTunes:String{
        return _bLinkToiTunes
    }
    
    var bSummary:String{
        return _bSummary
    }
    
    var bPrice:String{
        return _bPrice
    }
    
    var bReleaseDate:String{
        return _bReleaseDate
    }
    
    var bGenre:String{
        return _bGenre
    }
    
    init(data:JSONDictionary){
        
        if let name = data["im:name"] as? JSONDictionary, bName = name["label"] as? String{
            self._bName = bName
        }else{
            self._bName = ""
        }
        
        if let pub = data["im:publisher"] as? JSONDictionary, bPublisher = pub["label"] as? String{
            self._bPublisher = bPublisher
        }else{
            self._bPublisher = ""
        }
        
        if let img = data["im:image"] as? JSONArray, imgItem = img[2] as? JSONDictionary, bImageUrl = imgItem["label"] as? String{
            self._bImageUrl = bImageUrl.stringByReplacingOccurrencesOfString("170x170", withString: "1020x1020")
        }else{
            self._bImageUrl = ""
        }
        
        if let author = data["im:artist"] as? JSONDictionary, bAuthor = author["label"] as? String{
            self._bAuthor = bAuthor
        }else{
            self._bAuthor = ""
        }
        
        if let imid = data["id"] as? JSONDictionary, attributes = imid["attributes"] as? JSONDictionary, bImId = attributes["im:id"] as? String{
            self._bImId = bImId
        }else{
            self._bImId = ""
        }
        
        if let linkItunes = data["id"] as? JSONDictionary, bLinkToiTunes = linkItunes["label"] as? String{
            self._bLinkToiTunes = bLinkToiTunes
        }else{
            self._bLinkToiTunes = ""
        }
        
        if let summary = data["summary"] as? JSONDictionary, bSummary = summary["label"] as? String{
            self._bSummary = bSummary
        }else{
            self._bSummary = ""
        }
        
        if let price = data["im:price"] as? JSONDictionary, bPrice = price["label"] as? String{
            self._bPrice = bPrice
        }else{
            self._bPrice = ""
        }
        
        if let relDate = data["im:releaseDate"] as? JSONDictionary, attributes = relDate["attributes"] as? JSONDictionary, bReleaseDate = attributes["label"] as? String{
            self._bReleaseDate = bReleaseDate
        }else{
            self._bReleaseDate = ""
        }
        
        if let category = data["category"] as? JSONDictionary, attributes = category["attributes"] as? JSONDictionary, bGenre = attributes["term"] as? String{
            self._bGenre = bGenre
        }else{
            self._bGenre = ""
        }
        
    }
    
}