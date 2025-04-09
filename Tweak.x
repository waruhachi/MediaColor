#import "ColorSupport.h"

@interface MRUNowPlayingView : UIView
@end

/*@interface MRUNowPlayingViewController : UIViewController
@end*/

@interface MRUArtworkView : UIControl
@property (nonatomic,retain) UIImageView * artworkImageView;
@end

UIView *artworkBackground;

%hook MRUNowPlayingView

- (void)didMoveToSuperview {
    %orig;
    artworkBackground = self;
}

%end

%hook MRUArtworkView
- (void)setArtworkImage:(UIImage *)artworkImage {
    %orig;
    if (self.artworkImageView.superview == self) {
        [UIView animateWithDuration:0.3 animations:^{
            artworkBackground.backgroundColor = [artworkImage velvetAverageColor];
        }];
    }
}
%end

/*%hook MRUNowPlayingViewController
-(void)artworkView:(id)artworkView didChangeArtworkImage:(id)artworkImage {
    %orig;
    [UIView animateWithDuration:0.3 animations:^{
        artworkBackground.backgroundColor = [artworkImage velvetAverageColor];
    }];
}
%end*/