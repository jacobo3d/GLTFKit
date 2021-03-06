//
//  Copyright (c) 2017 Warren Moore. All rights reserved.
//
//  Permission to use, copy, modify, and distribute this software for any
//  purpose with or without fee is hereby granted, provided that the above
//  copyright notice and this permission notice appear in all copies.
//
//  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
//  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
//  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
//  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
//  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
//  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//

#import "GLTFViewerCamera.h"

@implementation GLTFViewerCamera

- (instancetype)init {
    if ((self = [super init])) {
        _keysDown = malloc(UINT16_MAX + 1);
        memset(_keysDown, 0, UINT16_MAX + 1);
    }
    return self;
}

- (void)dealloc {
    free(_keysDown);
}

- (simd_float4x4)viewMatrix {
    return matrix_identity_float4x4;
}

- (void)keyDown:(NSEvent *)event {
    self.keysDown[event.keyCode] = YES;
}

- (void)keyUp:(NSEvent *)event {
    self.keysDown[event.keyCode] = NO;
}

- (void)mouseDown:(NSEvent *)event {
}

- (void)mouseMoved:(NSEvent *)event {
}

- (void)mouseDragged:(NSEvent *)event {
}

- (void)mouseUp:(NSEvent *)event {
}

- (void)scrollWheel:(NSEvent *)event {
}

- (void)updateWithTimestep:(NSTimeInterval)timestep {
}

@end
