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
//  ATLocation.h
//  Tracker
//

#import <Foundation/Foundation.h>
#import "ATScreen.h"

@class ATTracker;


@interface ATLocation : ATScreenInfo

/**
 Latitude position
 */
@property (nonatomic) double latitude;

/**
 Longitude position
 */
@property (nonatomic) double longitude;

/**
 ATLocation initializer
 @param tracker the tracker instance
 @return ATLocation instance
 */
- (instancetype)initWithTracker:(ATTracker *)tracker;

/**
 Prepare parameters for the hit query string
 */
- (void)setEvent;

@end


@interface ATLocations : NSObject

/**
 Tracker instance
 */
@property (nonatomic, strong) ATTracker *tracker;

/**
 Add tagging data for a location position
 @param latitude latitude y
 @param longitude longitude x
 @return the ATLocation instance
 */
- (ATLocation *)addWithLatitude:(double)latitude longitude:(double)longitude;

/**
 ATLocations initializer
 @param tracker the tracker instance
 @return ATLocations instance
 */
- (instancetype)initWithTracker:(ATTracker *)tracker;

@end
