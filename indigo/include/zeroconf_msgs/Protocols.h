// Generated by gencpp from file zeroconf_msgs/Protocols.msg
// DO NOT EDIT!


#ifndef ZEROCONF_MSGS_MESSAGE_PROTOCOLS_H
#define ZEROCONF_MSGS_MESSAGE_PROTOCOLS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace zeroconf_msgs
{
template <class ContainerAllocator>
struct Protocols_
{
  typedef Protocols_<ContainerAllocator> Type;

  Protocols_()
    {
    }
  Protocols_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }




    enum { UNSPECIFIED = 0 };
     enum { IPV4 = 1 };
     enum { IPV6 = 2 };
 

  typedef boost::shared_ptr< ::zeroconf_msgs::Protocols_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zeroconf_msgs::Protocols_<ContainerAllocator> const> ConstPtr;

}; // struct Protocols_

typedef ::zeroconf_msgs::Protocols_<std::allocator<void> > Protocols;

typedef boost::shared_ptr< ::zeroconf_msgs::Protocols > ProtocolsPtr;
typedef boost::shared_ptr< ::zeroconf_msgs::Protocols const> ProtocolsConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zeroconf_msgs::Protocols_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zeroconf_msgs::Protocols_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace zeroconf_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'zeroconf_msgs': ['/tmp/binarydeb/ros-indigo-zeroconf-msgs-0.2.1/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zeroconf_msgs::Protocols_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::Protocols_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::Protocols_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e173730dc50e42e6497a38ee52e9e4d";
  }

  static const char* value(const ::zeroconf_msgs::Protocols_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e173730dc50e42eULL;
  static const uint64_t static_value2 = 0x6497a38ee52e9e4dULL;
};

template<class ContainerAllocator>
struct DataType< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zeroconf_msgs/Protocols";
  }

  static const char* value(const ::zeroconf_msgs::Protocols_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
# Protocol definitions used by all zeroconf messages and services.\n\
\n\
int8 UNSPECIFIED = 0\n\
int8 IPV4 = 1\n\
int8 IPV6 = 2\n\
";
  }

  static const char* value(const ::zeroconf_msgs::Protocols_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Protocols_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zeroconf_msgs::Protocols_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::zeroconf_msgs::Protocols_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ZEROCONF_MSGS_MESSAGE_PROTOCOLS_H
