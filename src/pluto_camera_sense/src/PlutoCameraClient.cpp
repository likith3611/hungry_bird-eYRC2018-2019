//
// Created by vedanshi on 29/4/19.
//

extern "C" {
#include "libavcodec/avcodec.h"
#include "libswscale/swscale.h"
#include "libavutil/pixfmt.h"
}
#include "SDL2/SDL.h"
#include "ros/ros.h"
#include "pluto_camera_sense/frame.h"
#include <iostream>
#include "std_msgs/String.h"

using namespace std;

SwsContext *pSwsCtx;
uint8_t *pframe_pixel;
AVFrame *pVideoFrame;
bool isDisplayInitialised;
AVCodec *pdecode;
AVCodecContext *pCodecCtxc;


SDL_Texture *sdlTexture;
SDL_Renderer *sdlRenderer;
SDL_Event event;


void chatterCallback(const pluto_camera_sense::frame::ConstPtr& frameData)
{

	 while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            return;
        }
    }

    int ret = 0;
    int got_picture = 0;

    if (!pdecode) {
        avcodec_register_all();

        pdecode = avcodec_find_decoder(AV_CODEC_ID_H264);

        pCodecCtxc = avcodec_alloc_context3(pdecode);
        pCodecCtxc->bit_rate = 125000;
        pCodecCtxc->width = 1280;
        pCodecCtxc->height = 720;

        if(!pdecode) {
            cout <<"no h264 decoder found"<< endl;
        }

        if (avcodec_open2(pCodecCtxc, pdecode, nullptr) < 0) {
            cout << "could not open codec" << endl;
            return;
        }
    }

    if (!pVideoFrame)
        pVideoFrame = av_frame_alloc();


    AVPacket pkt;
    av_init_packet(&pkt);
    pkt.data = (uint8_t*)(&(frameData->frameBuffer[0]));
    pkt.size = frameData->frameSize;
    pkt.flags = frameData->iframe;

    ret = avcodec_decode_video2(pCodecCtxc, pVideoFrame, &got_picture, &pkt);
    if (ret < 0)
    {
        cout << "decode error" << endl;
        return;
    }

    int screen_w = pCodecCtxc->width;
    int screen_h = pCodecCtxc->height;

    if (!isDisplayInitialised)
    {
        if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0) {
            SDL_Log("Unable to initialize SDL: %s", SDL_GetError());
            return;
        }

        SDL_Window *screen = SDL_CreateWindow("Camera Test", SDL_WINDOWPOS_CENTERED,        SDL_WINDOWPOS_CENTERED, screen_w, screen_h, SDL_WINDOW_RESIZABLE);
        isDisplayInitialised = true;

        sdlRenderer = SDL_CreateRenderer(screen, -1, 0);

        sdlTexture = SDL_CreateTexture(
                sdlRenderer,
                SDL_PIXELFORMAT_YV12,
                SDL_TEXTUREACCESS_STREAMING,
                pCodecCtxc->width,
                pCodecCtxc->height
        );
    }

    if (got_picture)
    {

        SDL_UpdateYUVTexture(sdlTexture, NULL,
                             pVideoFrame->data[0], pVideoFrame->linesize[0],
                             pVideoFrame->data[1], pVideoFrame->linesize[1],
                             pVideoFrame->data[2], pVideoFrame->linesize[2]);

        SDL_RenderClear(sdlRenderer);
        SDL_RenderCopy(sdlRenderer, sdlTexture, NULL, NULL);
        SDL_RenderPresent(sdlRenderer);
    }
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "PlutoCameraClient");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("PlutoCameraFrame", 1000, chatterCallback);

  ros::spin();

  return 0;
}
