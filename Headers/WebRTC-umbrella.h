
#import <WebRTC/RTCMediaStreamTrack.h>

#import <WebRTC/RTCMacros.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RTC_OBJC_TYPE
(RTCVideoRenderer);
@class RTC_OBJC_TYPE(RTCPeerConnectionFactory);
@class RTC_OBJC_TYPE(RTCVideoSource);

RTC_OBJC_EXPORT
@interface RTC_OBJC_TYPE (RTCVideoTrack) : RTC_OBJC_TYPE(RTCMediaStreamTrack)

/** The video source for this video track. */
@property(nonatomic, readonly) RTC_OBJC_TYPE(RTCVideoSource) *source;

- (instancetype)init NS_UNAVAILABLE;

/** Register a renderer that will render all frames received on this track. */
- (void)addRenderer:(id<RTC_OBJC_TYPE(RTCVideoRenderer)>)renderer;

/** Deregister a renderer. */
- (void)removeRenderer:(id<RTC_OBJC_TYPE(RTCVideoRenderer)>)renderer;

@end

NS_ASSUME_NONNULL_END
