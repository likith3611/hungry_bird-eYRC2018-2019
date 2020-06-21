#!/usr/bin/env python 
from plutodrone.msg import *
import rospy


class Edrone():
	"""docstring for Edrone"""
	def __init__(self):
		
		rospy.init_node('drone_control',anonymous=False)
		self.cmd = PlutoMsg()
		self.cmd.rcRoll = 1500
		self.cmd.rcPitch = 1500
		self.cmd.rcYaw = 1500
		self.cmd.rcThrottle = 1000
		self.cmd.rcAUX1 = 1500
		self.cmd.rcAUX2 = 1500
		self.cmd.rcAUX3 = 1500
		self.cmd.rcAUX4 = 1000
		self.command_pub = rospy.Publisher('/drone_command', PlutoMsg, queue_size=1)

	def disarm(self):
		print("[INFO]:Arm state...")
		self.cmd.rcAUX4 = 1100
		self.command_pub.publish(self.cmd)
		rospy.sleep(1)


	# Arming condition of the drone : Best practise is to disarm and then arm the drone.
	def arm(self):

		# self.disarm()
		print("[INFO]:Arm state...")
		self.cmd.rcRoll = 1500
		self.cmd.rcYaw = 1500
		self.cmd.rcPitch = 1500
		self.cmd.rcThrottle = 1000
		self.cmd.rcAUX4 = 1500
		self.command_pub.publish(self.cmd)	# Publishing /drone_command
		rospy.sleep(1)

	def test(self):
		self.arm()
		rospy.sleep(2)
		self.cmd.rcThrottle = 1400
		self.command_pub.publish(self.cmd)
		rospy.sleep(2)
		self.cmd.rcThrottle = 1600
		self.command_pub.publish(self.cmd)
		rospy.sleep(2)
		self.cmd.rcThrottle = 1800
		self.command_pub.publish(self.cmd)
		rospy.sleep(2)
		self.disarm()

if __name__ == '__main__':

	e_drone = Edrone()

	while not rospy.is_shutdown():
		e_drone.test()