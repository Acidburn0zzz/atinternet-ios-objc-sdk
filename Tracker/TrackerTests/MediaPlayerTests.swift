/*
This SDK is licensed under the MIT license (MIT)
Copyright (c) 2015- Applied Technologies Internet SAS (registration number B 403 261 258 - Trade and Companies Register of Bordeaux – France)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/





//
//  MediaPlayerTests.swift
//


import UIKit
import XCTest

class MediaPlayerTests: XCTestCase {

    let tracker = ATInternet.sharedInstance().defaultTracker
    
    lazy var mediaPlayer: ATMediaPlayer = ATMediaPlayer(tracker: self.tracker)
    lazy var mediaPlayers: ATMediaPlayers = ATMediaPlayers(tracker: self.tracker)
    
    func testSetMediaPlayer() {
        mediaPlayer.playerId = 42
        
        XCTAssert(mediaPlayer.playerId == 42, "L'identifiant doit être 42")
        XCTAssertNotNil(mediaPlayer.videos, "La propriété n'est pas correctement initalisée")
        XCTAssertNotNil(mediaPlayer.audios, "La propriété n'est pas correctement initalisée")
        XCTAssertNotNil(mediaPlayer.liveAudios, "La propriété n'est pas correctement initalisée")
        XCTAssertNotNil(mediaPlayer.liveVideos, "La propriété n'est pas correctement initalisée")
    }
    
    func testAddMediaPlayer() {
        mediaPlayers.add()
        mediaPlayers.addWithId(42)
        
        XCTAssert(mediaPlayers.playerIds.count == 2, "Le nombre d'objet doit être égale à 2")
        XCTAssert(mediaPlayers.playerIds[42] != nil, "Le player devrait exister pour cet identifiant")
    }
    
    func testRemoveAllMediaPlayers() {
        mediaPlayers.add()
        mediaPlayers.add()
        mediaPlayers.removeAll()
        
        XCTAssert(mediaPlayers.playerIds.count == 0, "Le nombre d'objet doit être égale à 2")
    }
    
    func testRemoveMediaPlayer() {
        mediaPlayers.addWithId(72)
        mediaPlayers.removeWithId(72)
        
        XCTAssert(mediaPlayers.playerIds.count == 0, "Le nombre d'objet doit être égale à 2")
    }

}
