//
//  SCMapView.m
//  MapFramework
//
//  Created by Source on 2019/1/29.
//


#import "SCMapView.h"


#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件


@interface SCMapView ()


@property (nonatomic, weak, nullable) BMKMapView *mapView;
@property (nonatomic, strong, nullable) BMKMapManager *mapManager;


@end


@implementation SCMapView


#pragma mark - Life Circle
- (nonnull instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    
    return self;
}


- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    
    return self;
}


- (void)commonInit {
    self.mapManager = [[BMKMapManager alloc] init];
    [self.mapManager start:@"Knl1fpf4vP2yrg0cjsYBQi9i"
           generalDelegate:nil];
    
    BMKMapView *mapView = [[BMKMapView alloc] initWithFrame:CGRectZero];
    [self addSubview:mapView];
    self.mapView = mapView;
}


#pragma mark - Override Methods
- (void)willMoveToSuperview:(UIView *)newSuperview {
    self.mapView.frame = self.bounds;
}


@end

