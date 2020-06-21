#!/usr/bin/python
import rospy
from std_msgs.msg import String
def talker():
	pub=rospy.Publisher('chatter',String, queue_size=10)#pubisher
	rospy.init_node('talker',anonymous=True)#node
	rate=rospy.Rate(10)#10hz
	while not rospy.is_shutdown():
		hello_str="hello world"
		pub.publish(hello_str)
		rate.sleep()



if __name__ =='__main__': 
	try:
		talker()

	except rospy.ROSInterruptException:
		pass
