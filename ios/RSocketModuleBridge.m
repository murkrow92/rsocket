//
//  RSocketModuleBridge.m
//  rsocket
//
//  Created by Duc Trung on 21/09/2021.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(CalendarManager, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location)

@end
