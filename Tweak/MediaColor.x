#include "MediaColor.h"

%hook MRUNowPlayingView

- (void)didMoveToWindow {
    %orig;

    if (self.window) {
        artworkBackground = self;
    } else {
        artworkBackground = nil;
    }
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
