#include <stdint.h>
#include <media/IMediaSource.h>
#include <media/stagefright/MediaSource.h>

extern "C" {
    bool _ZNK7android11MediaSource11ReadOptions9getSeekToEPxPNS1_8SeekModeE(android::IMediaSource::ReadOptions *readOptions, int64_t *time_us, android::IMediaSource::ReadOptions::SeekMode *mode) {
        bool res = readOptions->getSeekTo(time_us, mode);
        return res;
    }
}
