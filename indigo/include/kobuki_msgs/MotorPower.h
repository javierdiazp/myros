// Generated by gencpp from file kobuki_msgs/MotorPower.msg
// DO NOT EDIT!


#ifndef KOBUKI_MSGS_MESSAGE_MOTORPOWER_H
#define KOBUKI_MSGS_MESSAGE_MOTORPOWER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kobuki_msgs
{
template <class ContainerAllocator>
struct MotorPower_
{
  typedef MotorPower_<ContainerAllocator> Type;

  MotorPower_()
    : state(0)  {
    }
  MotorPower_(const ContainerAllocator& _alloc)
    : state(0)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;


    enum { OFF = 0u };
     enum { ON = 1u };
 

  typedef boost::shared_ptr< ::kobuki_msgs::MotorPower_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kobuki_msgs::MotorPower_<ContainerAllocator> const> ConstPtr;

}; // struct MotorPower_

typedef ::kobuki_msgs::MotorPower_<std::allocator<void> > MotorPower;

typedef boost::shared_ptr< ::kobuki_msgs::MotorPower > MotorPowerPtr;
typedef boost::shared_ptr< ::kobuki_msgs::MotorPower const> MotorPowerConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kobuki_msgs::MotorPower_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kobuki_msgs::MotorPower_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kobuki_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'kobuki_msgs': ['/tmp/binarydeb/ros-indigo-kobuki-msgs-0.6.1/msg', '/tmp/binarydeb/ros-indigo-kobuki-msgs-0.6.1/obj-i686-linux-gnu/devel/share/kobuki_msgs/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kobuki_msgs::MotorPower_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kobuki_msgs::MotorPower_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kobuki_msgs::MotorPower_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f77c0161e0f2021493136bb5f3f0e51";
  }

  static const char* value(const ::kobuki_msgs::MotorPower_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f77c0161e0f2021ULL;
  static const uint64_t static_value2 = 0x493136bb5f3f0e51ULL;
};

template<class ContainerAllocator>
struct DataType< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kobuki_msgs/MotorPower";
  }

  static const char* value(const ::kobuki_msgs::MotorPower_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Turn on/off Kobuki's motors\n\
\n\
# State\n\
uint8 OFF = 0\n\
uint8 ON  = 1\n\
\n\
uint8 state\n\
";
  }

  static const char* value(const ::kobuki_msgs::MotorPower_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorPower_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kobuki_msgs::MotorPower_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kobuki_msgs::MotorPower_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOBUKI_MSGS_MESSAGE_MOTORPOWER_H
