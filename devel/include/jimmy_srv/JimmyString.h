// Generated by gencpp from file jimmy_srv/JimmyString.msg
// DO NOT EDIT!


#ifndef JIMMY_SRV_MESSAGE_JIMMYSTRING_H
#define JIMMY_SRV_MESSAGE_JIMMYSTRING_H


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
struct JimmyString_
{
  typedef JimmyString_<ContainerAllocator> Type;

  JimmyString_()
    : PatrolCmd()
    , orig_caller_id()
    , data()  {
    }
  JimmyString_(const ContainerAllocator& _alloc)
    : PatrolCmd(_alloc)
    , orig_caller_id(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _PatrolCmd_type;
  _PatrolCmd_type PatrolCmd;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _orig_caller_id_type;
  _orig_caller_id_type orig_caller_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::jimmy_srv::JimmyString_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jimmy_srv::JimmyString_<ContainerAllocator> const> ConstPtr;

}; // struct JimmyString_

typedef ::jimmy_srv::JimmyString_<std::allocator<void> > JimmyString;

typedef boost::shared_ptr< ::jimmy_srv::JimmyString > JimmyStringPtr;
typedef boost::shared_ptr< ::jimmy_srv::JimmyString const> JimmyStringConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jimmy_srv::JimmyString_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jimmy_srv::JimmyString_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace jimmy_srv

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'jimmy_srv': ['/home/jimmy/rosjava/src/jimmy_srv/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::jimmy_srv::JimmyString_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jimmy_srv::JimmyString_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jimmy_srv::JimmyString_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jimmy_srv::JimmyString_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jimmy_srv::JimmyString_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jimmy_srv::JimmyString_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jimmy_srv::JimmyString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb3f80be0569f2704f76fceeb9b36238";
  }

  static const char* value(const ::jimmy_srv::JimmyString_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb3f80be0569f270ULL;
  static const uint64_t static_value2 = 0x4f76fceeb9b36238ULL;
};

template<class ContainerAllocator>
struct DataType< ::jimmy_srv::JimmyString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jimmy_srv/JimmyString";
  }

  static const char* value(const ::jimmy_srv::JimmyString_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jimmy_srv::JimmyString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Integration test message\n\
# caller_id of most recent node to send this message\n\
#string caller_id\n\
string PatrolCmd\n\
# caller_id of the original node to send this message\n\
string orig_caller_id\n\
string data\n\
";
  }

  static const char* value(const ::jimmy_srv::JimmyString_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jimmy_srv::JimmyString_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.PatrolCmd);
      stream.next(m.orig_caller_id);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct JimmyString_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jimmy_srv::JimmyString_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jimmy_srv::JimmyString_<ContainerAllocator>& v)
  {
    s << indent << "PatrolCmd: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.PatrolCmd);
    s << indent << "orig_caller_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.orig_caller_id);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JIMMY_SRV_MESSAGE_JIMMYSTRING_H
