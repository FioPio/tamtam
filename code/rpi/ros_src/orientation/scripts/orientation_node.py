#! /usr/bin/env python

import rospy
from orientation.msg import Orientation
from Adafruit_BNO055 import BNO055

#ROS NODE START
rospy.init_node('orientation_node', anonymous=True)
#Setting up the publisher
pub = rospy.Publisher('orientation', Orientation, queue_size=10)
#printing init message
rospy.loginfo("Starting orientation node")
#setting the maximum desired rate
rate = rospy.Rate(50)
#setting BNO055 communication
bno = BNO055.BNO055(serial_port='/dev/serial0')
# Initialize the BNO055 and stop if something went wrong.
if not bno.begin():
        raise RuntimeError('Failed to initialize BNO055! Is the sensor connected?')
#Ros code
while not rospy.is_shutdown():
        #get pitch roll and yaw
        heading, roll, pitch = bno.read_euler()
        orient=Orientation()
        orient.pitch=pitch
        orient.roll=roll
        orient.yaw=heading
        #publish it
        pub.publish(orient)
        rate.sleep()
        
