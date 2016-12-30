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

echo_and_run cd "/home/jimmy/rosjava/src/genjava"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jimmy/rosjava/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jimmy/rosjava/install/lib/python2.7/dist-packages:/home/jimmy/rosjava/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jimmy/rosjava/build" \
    "/usr/bin/python" \
    "/home/jimmy/rosjava/src/genjava/setup.py" \
    build --build-base "/home/jimmy/rosjava/build/genjava" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/jimmy/rosjava/install" --install-scripts="/home/jimmy/rosjava/install/bin"
