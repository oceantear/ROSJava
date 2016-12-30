// Generated by gencpp from file william_srv/TestHeader.msg
// DO NOT EDIT!


#ifndef WILLIAM_SRV_MESSAGE_TESTHEADER_H
#define WILLIAM_SRV_MESSAGE_TESTHEADER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace william_srv
{
template <class ContainerAllocator>
struct TestHeader_
{
  typedef TestHeader_<ContainerAllocator> Type;

  TestHeader_()
    : header()
    , caller_id()
    , orig_caller_id()
    , auto_header(0)  {
    }
  TestHeader_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , caller_id(_alloc)
    , orig_caller_id(_alloc)
    , auto_header(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _caller_id_type;
  _caller_id_type caller_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _orig_caller_id_type;
  _orig_caller_id_type orig_caller_id;

   typedef int8_t _auto_header_type;
  _auto_header_type auto_header;




  typedef boost::shared_ptr< ::william_srv::TestHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::william_srv::TestHeader_<ContainerAllocator> const> ConstPtr;

}; // struct TestHeader_

typedef ::william_srv::TestHeader_<std::allocator<void> > TestHeader;

typedef boost::shared_ptr< ::william_srv::TestHeader > TestHeaderPtr;
typedef boost::shared_ptr< ::william_srv::TestHeader const> TestHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::william_srv::TestHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::william_srv::TestHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace william_srv

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'william_srv': ['/home/jimmy/rosjava/src/william_srv/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::william_srv::TestHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::william_srv::TestHeader_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::william_srv::TestHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::william_srv::TestHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::william_srv::TestHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::william_srv::TestHeader_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::william_srv::TestHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4b5a00f536da2f756ba6aebcf795a967";
  }

  static const char* value(const ::william_srv::TestHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4b5a00f536da2f75ULL;
  static const uint64_t static_value2 = 0x6ba6aebcf795a967ULL;
};

template<class ContainerAllocator>
struct DataType< ::william_srv::TestHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "william_srv/TestHeader";
  }

  static const char* value(const ::william_srv::TestHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::william_srv::TestHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# caller_id of most recent node to send this message\n\
string caller_id\n\
# caller_id of the original node to send this message\n\
string orig_caller_id\n\
\n\
byte auto_header # autoset header on response\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::william_srv::TestHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::william_srv::TestHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.caller_id);
      stream.next(m.orig_caller_id);
      stream.next(m.auto_header);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct TestHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::william_srv::TestHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::william_srv::TestHeader_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "caller_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.caller_id);
    s << indent << "orig_caller_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.orig_caller_id);
    s << indent << "auto_header: ";
    Printer<int8_t>::stream(s, indent + "  ", v.auto_header);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WILLIAM_SRV_MESSAGE_TESTHEADER_H
