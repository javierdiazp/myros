// Generated by gencpp from file driver_base/ConfigValue.msg
// DO NOT EDIT!


#ifndef DRIVER_BASE_MESSAGE_CONFIGVALUE_H
#define DRIVER_BASE_MESSAGE_CONFIGVALUE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace driver_base
{
template <class ContainerAllocator>
struct ConfigValue_
{
  typedef ConfigValue_<ContainerAllocator> Type;

  ConfigValue_()
    : name()
    , value(0.0)  {
    }
  ConfigValue_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , value(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef double _value_type;
  _value_type value;




  typedef boost::shared_ptr< ::driver_base::ConfigValue_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::driver_base::ConfigValue_<ContainerAllocator> const> ConstPtr;

}; // struct ConfigValue_

typedef ::driver_base::ConfigValue_<std::allocator<void> > ConfigValue;

typedef boost::shared_ptr< ::driver_base::ConfigValue > ConfigValuePtr;
typedef boost::shared_ptr< ::driver_base::ConfigValue const> ConfigValueConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::driver_base::ConfigValue_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::driver_base::ConfigValue_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace driver_base

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'driver_base': ['/tmp/binarydeb/ros-indigo-driver-base-1.6.8/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::driver_base::ConfigValue_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::driver_base::ConfigValue_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::driver_base::ConfigValue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::driver_base::ConfigValue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::driver_base::ConfigValue_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::driver_base::ConfigValue_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::driver_base::ConfigValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8512f27253c0f65f928a67c329cd658";
  }

  static const char* value(const ::driver_base::ConfigValue_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8512f27253c0f65ULL;
  static const uint64_t static_value2 = 0xf928a67c329cd658ULL;
};

template<class ContainerAllocator>
struct DataType< ::driver_base::ConfigValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "driver_base/ConfigValue";
  }

  static const char* value(const ::driver_base::ConfigValue_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::driver_base::ConfigValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
float64 value\n\
";
  }

  static const char* value(const ::driver_base::ConfigValue_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::driver_base::ConfigValue_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConfigValue_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::driver_base::ConfigValue_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::driver_base::ConfigValue_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "value: ";
    Printer<double>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DRIVER_BASE_MESSAGE_CONFIGVALUE_H
