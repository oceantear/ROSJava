// Generated by gencpp from file jimmy_srv/CompositeB.msg
// DO NOT EDIT!


#ifndef JIMMY_SRV_MESSAGE_COMPOSITEB_H
#define JIMMY_SRV_MESSAGE_COMPOSITEB_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jimmy_srv
{
template <class ContainerAllocator>
struct CompositeB_
{
  typedef CompositeB_<ContainerAllocator> Type;

  CompositeB_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  CompositeB_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;




  typedef boost::shared_ptr< ::jimmy_srv::CompositeB_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jimmy_srv::CompositeB_<ContainerAllocator> const> ConstPtr;

}; // struct CompositeB_

typedef ::jimmy_srv::CompositeB_<std::allocator<void> > CompositeB;

typedef boost::shared_ptr< ::jimmy_srv::CompositeB > CompositeBPtr;
typedef boost::shared_ptr< ::jimmy_srv::CompositeB const> CompositeBConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jimmy_srv::CompositeB_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jimmy_srv::CompositeB_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace jimmy_srv

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'jimmy_srv': ['/home/jimmy/rosjava/src/jimmy_srv/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::jimmy_srv::CompositeB_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jimmy_srv::CompositeB_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jimmy_srv::CompositeB_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jimmy_srv::CompositeB_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jimmy_srv::CompositeB_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jimmy_srv::CompositeB_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jimmy_srv::CompositeB_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a842b65f413084dc2b10fb484ea7f17";
  }

  static const char* value(const ::jimmy_srv::CompositeB_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a842b65f413084dULL;
  static const uint64_t static_value2 = 0xc2b10fb484ea7f17ULL;
};

template<class ContainerAllocator>
struct DataType< ::jimmy_srv::CompositeB_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jimmy_srv/CompositeB";
  }

  static const char* value(const ::jimmy_srv::CompositeB_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jimmy_srv::CompositeB_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# copy of geometry_msgs/Point for testing\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::jimmy_srv::CompositeB_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jimmy_srv::CompositeB_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct CompositeB_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jimmy_srv::CompositeB_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jimmy_srv::CompositeB_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JIMMY_SRV_MESSAGE_COMPOSITEB_H
