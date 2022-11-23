import rospy
from geometry_msgs.msg import PoseArray

rospy.Subscriber('/vrep/waypoints',PoseArray,self.me)
def me(msq):
	print(msq)

