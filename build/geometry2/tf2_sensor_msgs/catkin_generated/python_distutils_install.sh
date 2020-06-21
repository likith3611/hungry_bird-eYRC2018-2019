#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/cry2ra5y/my_catkin_workspace/src/geometry2/tf2_sensor_msgs"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/cry2ra5y/my_catkin_workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/cry2ra5y/my_catkin_workspace/install/lib/python2.7/dist-packages:/home/cry2ra5y/my_catkin_workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/cry2ra5y/my_catkin_workspace/build" \
    "/usr/bin/python2" \
    "/home/cry2ra5y/my_catkin_workspace/src/geometry2/tf2_sensor_msgs/setup.py" \
    build --build-base "/home/cry2ra5y/my_catkin_workspace/build/geometry2/tf2_sensor_msgs" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/cry2ra5y/my_catkin_workspace/install" --install-scripts="/home/cry2ra5y/my_catkin_workspace/install/bin"
