// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import GoogleMaps
#import "FLTGoogleMapsPlugin.h"
#import "GoogleMaps"
#pragma mark - GoogleMaps plugin implementation

@implementation FLTGoogleMapsPlugin {
  NSObject<FlutterPluginRegistrar>* _registrar;
  [GMSServices provideAPIKey:@"AIzaSyB3woxSmtZHPDJHyWEnTZ9L5NOQSKgvtCE"];
    [GeneratedPluginRegistrant registerWithRegistry:self];
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
      GMSServices.provideAPIKey("AIzaSyB3woxSmtZHPDJHyWEnTZ9L5NOQSKgvtCE")
  FlutterMethodChannel* _channel;
  NSMutableDictionary* _mapControllers;
}

+ (void