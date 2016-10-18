// Generated by gencpp from file capabilities/UseCapabilityResponse.msg
// DO NOT EDIT!


#ifndef CAPABILITIES_MESSAGE_USECAPABILITYRESPONSE_H
#define CAPABILITIES_MESSAGE_USECAPABILITYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace capabilities
{
template <class ContainerAllocator>
struct UseCapabilityResponse_
{
  typedef UseCapabilityResponse_<ContainerAllocator> Type;

  UseCapabilityResponse_()
    {
    }
  UseCapabilityResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::capabilities::UseCapabilityResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::capabilities::UseCapabilityResponse_<ContainerAllocator> const> ConstPtr;

}; // struct UseCapabilityResponse_

typedef ::capabilities::UseCapabilityResponse_<std::allocator<void> > UseCapabilityResponse;

typedef boost::shared_ptr< ::capabilities::UseCapabilityResponse > UseCapabilityResponsePtr;
typedef boost::shared_ptr< ::capabilities::UseCapabilityResponse const> UseCapabilityResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::capabilities::UseCapabilityResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace capabilities

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'capabilities': ['/tmp/binarydeb/ros-indigo-capabilities-0.2.0/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::capabilities::UseCapabilityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::capabilities::UseCapabilityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::capabilities::UseCapabilityResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::capabilities::UseCapabilityResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "capabilities/UseCapabilityResponse";
  }

  static const char* value(const ::capabilities::UseCapabilityResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::capabilities::UseCapabilityResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UseCapabilityResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::capabilities::UseCapabilityResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::capabilities::UseCapabilityResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CAPABILITIES_MESSAGE_USECAPABILITYRESPONSE_H
