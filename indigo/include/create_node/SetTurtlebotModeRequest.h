// Generated by gencpp from file create_node/SetTurtlebotModeRequest.msg
// DO NOT EDIT!


#ifndef CREATE_NODE_MESSAGE_SETTURTLEBOTMODEREQUEST_H
#define CREATE_NODE_MESSAGE_SETTURTLEBOTMODEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace create_node
{
template <class ContainerAllocator>
struct SetTurtlebotModeRequest_
{
  typedef SetTurtlebotModeRequest_<ContainerAllocator> Type;

  SetTurtlebotModeRequest_()
    : mode(0)  {
    }
  SetTurtlebotModeRequest_(const ContainerAllocator& _alloc)
    : mode(0)  {
  (void)_alloc;
    }



   typedef uint8_t _mode_type;
  _mode_type mode;




  typedef boost::shared_ptr< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTurtlebotModeRequest_

typedef ::create_node::SetTurtlebotModeRequest_<std::allocator<void> > SetTurtlebotModeRequest;

typedef boost::shared_ptr< ::create_node::SetTurtlebotModeRequest > SetTurtlebotModeRequestPtr;
typedef boost::shared_ptr< ::create_node::SetTurtlebotModeRequest const> SetTurtlebotModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace create_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'create_node': ['/tmp/binarydeb/ros-indigo-create-node-2.3.0/msg'], 'diagnostic_msgs': ['/opt/ros/indigo/share/diagnostic_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89b81386720be1cd0ce7a3953fcd1b19";
  }

  static const char* value(const ::create_node::SetTurtlebotModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89b81386720be1cdULL;
  static const uint64_t static_value2 = 0x0ce7a3953fcd1b19ULL;
};

template<class ContainerAllocator>
struct DataType< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "create_node/SetTurtlebotModeRequest";
  }

  static const char* value(const ::create_node::SetTurtlebotModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 mode\n\
";
  }

  static const char* value(const ::create_node::SetTurtlebotModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTurtlebotModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::create_node::SetTurtlebotModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::create_node::SetTurtlebotModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CREATE_NODE_MESSAGE_SETTURTLEBOTMODEREQUEST_H
