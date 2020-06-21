//
// Created by vedanshi on 26/4/19.
//

#include "ros/ros.h"
#include "pluto_camera_sense/frame.h"
//#include "pluto_camera_sense/PlutoCameraService.h"
#include "pluto_camera_sense/liblewei.h"
#include <iostream>
#include "std_msgs/String.h"

using namespace std;

ros::Publisher chatter_pub;

static void read_buffer(void* lpParam, lewei_video_frame *pFrame);


int main(int argc, char **argv)
{

  ros::init(argc, argv, "PlutoCameraPublisher");

  ros::NodeHandle n;

  chatter_pub = n.advertise<pluto_camera_sense::frame>("PlutoCameraFrame", 1000);
  printf("Ready to Provide ImageData Service\n");

  lewei_initialize_stream();

  long ret = lewei_start_stream(nullptr, read_buffer);

  pthread_join(ret, NULL);

  return 0;
}

static void read_buffer(void* lpParam, lewei_video_frame *pFrame)
{
	int ret = 0;
	int got_picture = 0;

	if (pFrame->size <= 0)
	{
	   video_free_frame_ram(pFrame);
	   return;
	}


	pluto_camera_sense::frame frameData;

    frameData.frameBuffer = std::vector<unsigned char>( pFrame->buf,  pFrame->buf +  pFrame->size);
	frameData.frameSize = pFrame->size;
	frameData.iframe = pFrame->iFrame;
	chatter_pub.publish(frameData);
	ros::spinOnce();
	
	video_free_frame_ram(pFrame);
}
