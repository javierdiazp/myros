// Generated by gencpp from file stdr_msgs/FootprintMsg.msg
// DO NOT EDIT!


#ifndef STDR_MSGS_MESSAGE_FOOTPRINTMSG_H
#define STDR_MSGS_MESSAGE_FOOTPRINTMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace stdr_msgs
{
template <class ContainerAllocator>
struct FootprintMsg_
{
  typedef FootprintMsg_<ContainerAllocator> Type;

  FootprintMsg_()
    : points()
    , radius(0.0)  {
    }
  FootprintMsg_(const ContainerAllocator& _alloc)
    : points(_alloc)
    , radius(0.0)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _points_type;
  _points_type points;

   typedef float _radius_type;
  _radius_type radius;




  typedef boost::shared_ptr< ::stdr_msgs::FootprintMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stdr_msgs::FootprintMsg_<ContainerAllocator> const> ConstPtr;

}; // struct FootprintMsg_

typedef ::stdr_msgs::FootprintMsg_<std::allocator<void> > FootprintMsg;

typedef boost::shared_ptr< ::stdr_msgs::FootprintMsg > FootprintMsgPtr;
typedef boost::shared_ptr< ::stdr_msgs::FootprintMsg const> FootprintMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stdr_msgs::FootprintMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace stdr_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'stdr_msgs': ['/tmp/binarydeb/ros-indigo-stdr-msgs-0.3.1/msg', '/tmp/binarydeb/ros-indigo-stdr-msgs-0.3.1/obj-i686-linux-gnu/devel/share/stdr_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::FootprintMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::FootprintMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::FootprintMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85abf3c88ffa720da1b02b0368d5d55e";
  }

  static const char* value(const ::stdr_msgs::FootprintMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85abf3c88ffa720dULL;
  static const uint64_t static_value2 = 0xa1b02b0368d5d55eULL;
};

template<class ContainerAllocator>
struct DataType< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stdr_msgs/FootprintMsg";
  }

  static const char* value(const ::stdr_msgs::FootprintMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point[] points\n\
float32 radius # for circular footprints\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::stdr_msgs::FootprintMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.points);
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FootprintMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stdr_msgs::FootprintMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stdr_msgs::FootprintMsg_<ContainerAllocator>& v)
  {
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STDR_MSGS_MESSAGE_FOOTPRINTMSG_H
