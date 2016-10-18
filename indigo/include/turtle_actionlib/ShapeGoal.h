// Generated by gencpp from file turtle_actionlib/ShapeGoal.msg
// DO NOT EDIT!


#ifndef TURTLE_ACTIONLIB_MESSAGE_SHAPEGOAL_H
#define TURTLE_ACTIONLIB_MESSAGE_SHAPEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtle_actionlib
{
template <class ContainerAllocator>
struct ShapeGoal_
{
  typedef ShapeGoal_<ContainerAllocator> Type;

  ShapeGoal_()
    : edges(0)
    , radius(0.0)  {
    }
  ShapeGoal_(const ContainerAllocator& _alloc)
    : edges(0)
    , radius(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _edges_type;
  _edges_type edges;

   typedef float _radius_type;
  _radius_type radius;




  typedef boost::shared_ptr< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ShapeGoal_

typedef ::turtle_actionlib::ShapeGoal_<std::allocator<void> > ShapeGoal;

typedef boost::shared_ptr< ::turtle_actionlib::ShapeGoal > ShapeGoalPtr;
typedef boost::shared_ptr< ::turtle_actionlib::ShapeGoal const> ShapeGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtle_actionlib::ShapeGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace turtle_actionlib

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'turtle_actionlib': ['/tmp/binarydeb/ros-indigo-turtle-actionlib-0.1.8/msg', '/tmp/binarydeb/ros-indigo-turtle-actionlib-0.1.8/obj-i686-linux-gnu/devel/share/turtle_actionlib/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b9202ab7292cebe5a95ab2bf6b9c091";
  }

  static const char* value(const ::turtle_actionlib::ShapeGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b9202ab7292cebeULL;
  static const uint64_t static_value2 = 0x5a95ab2bf6b9c091ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtle_actionlib/ShapeGoal";
  }

  static const char* value(const ::turtle_actionlib::ShapeGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
int32 edges\n\
float32 radius\n\
";
  }

  static const char* value(const ::turtle_actionlib::ShapeGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.edges);
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShapeGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtle_actionlib::ShapeGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtle_actionlib::ShapeGoal_<ContainerAllocator>& v)
  {
    s << indent << "edges: ";
    Printer<int32_t>::stream(s, indent + "  ", v.edges);
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLE_ACTIONLIB_MESSAGE_SHAPEGOAL_H
