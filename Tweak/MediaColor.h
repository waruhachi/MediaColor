#include <UIKit/UIKit.h>

#include "Vendor/ColorSupport.h"

@interface MRUNowPlayingView : UIView
@end

@interface MRUArtworkView : UIControl
    @property (nonatomic,retain) UIImageView * artworkImageView;
@end

UIView *artworkBackground;
UIView *ccArtworkBackground;
