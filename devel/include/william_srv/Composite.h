// Generated by gencpp from file william_srv/Composite.msg
// DO NOT EDIT!


#ifndef WILLIAM_SRV_MESSAGE_COMPOSITE_H
#define WILLIAM_SRV_MESSAGE_COMPOSITE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <william_srv/CompositeA.h>
#include <william_srv/CompositeB.h>

namespace william_srv
{
template <class ContainerAllocator>
struct Composite_
{
  typedef Composite_<ContainerAllocator> Type;

  Composite_()
    : a()
    , b()  {
    }
  Composite_(const ContainerAllocator& _alloc)
    : a(_alloc)
    , b(_alloc)  {
  (void)_alloc;
    }



   typedef  ::william_srv::CompositeA_<ContainerAllocator>  _a_type;
  _a_type a;

   typedef  ::william_srv::CompositeB_<ContainerAllocator>  _b_type;
  _b_type b;




  typedef boost::shared_ptr< ::william_srv::Composite_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::william_srv::Composite_<ContainerAllocator> const> ConstPtr;

}; // struct Composite_

typedef ::william_srv::Composite_<std::allocator<void> > Composite;

typedef boost::shared_ptr< ::william_srv::Composite > CompositePtr;
typedef boost::shared_ptr< ::william_srv::Composite const> CompositeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::william_srv::Composite_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::william_srv::Composite_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace william_srv

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'william_srv': ['/home/jimmy/rosjava/src/william_srv/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::william_srv::Composite_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::william_srv::Composite_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::william_srv::Composite_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::william_srv::Composite_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::william_srv::Composite_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::william_srv::Composite_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::william_srv::Composite_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8fb6eb869ad3956b50e8737d96dc9fa";
  }

  static const char* value(const ::william_srv::Composite_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8fb6eb869ad3956ULL;
  static const uint64_t static_value2 = 0xb50e8737d96dc9faULL;
};

template<class ContainerAllocator>
struct DataType< ::william_srv::Composite_<ContainerAllocator> >
{
  static const char* value()
  {
    return "william_srv/Composite";
  }

  static const char* value(const ::william_srv::Composite_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::william_srv::Composite_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# composite message. required for testing import calculation in generators\n\
CompositeA a\n\
CompositeB b\n\
\n\
================================================================================\n\
MSG: william_srv/CompositeA\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: william_srv/CompositeB\n\
# copy of geometry_msgs/Point for testing\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::william_srv::Composite_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::william_srv::Composite_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Composite_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::william_srv::Composite_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::william_srv::Composite_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    s << std::endl;
    Printer< ::william_srv::CompositeA_<ContainerAllocator> >::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    s << std::endl;
    Printer< ::william_srv::CompositeB_<ContainerAllocator> >::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WILLIAM_SRV_MESSAGE_COMPOSITE_H
