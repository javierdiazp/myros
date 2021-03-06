// Generated by gencpp from file rocon_app_manager_msgs/StartRappResponse.msg
// DO NOT EDIT!


#ifndef ROCON_APP_MANAGER_MSGS_MESSAGE_STARTRAPPRESPONSE_H
#define ROCON_APP_MANAGER_MSGS_MESSAGE_STARTRAPPRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rocon_app_manager_msgs
{
template <class ContainerAllocator>
struct StartRappResponse_
{
  typedef StartRappResponse_<ContainerAllocator> Type;

  StartRappResponse_()
    : started(false)
    , error_code(0)
    , message()
    , application_namespace()  {
    }
  StartRappResponse_(const ContainerAllocator& _alloc)
    : started(false)
    , error_code(0)
    , message(_alloc)
    , application_namespace(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _started_type;
  _started_type started;

   typedef int32_t _error_code_type;
  _error_code_type error_code;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _application_namespace_type;
  _application_namespace_type application_namespace;




  typedef boost::shared_ptr< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StartRappResponse_

typedef ::rocon_app_manager_msgs::StartRappResponse_<std::allocator<void> > StartRappResponse;

typedef boost::shared_ptr< ::rocon_app_manager_msgs::StartRappResponse > StartRappResponsePtr;
typedef boost::shared_ptr< ::rocon_app_manager_msgs::StartRappResponse const> StartRappResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rocon_app_manager_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/opt/ros/indigo/share/rocon_std_msgs/cmake/../msg'], 'rocon_service_pair_msgs': ['/opt/ros/indigo/share/rocon_service_pair_msgs/cmake/../msg'], 'rocon_app_manager_msgs': ['/tmp/binarydeb/ros-indigo-rocon-app-manager-msgs-0.7.12/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/indigo/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e0ddce154da40da8b63b887f1d049e8";
  }

  static const char* value(const ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e0ddce154da40daULL;
  static const uint64_t static_value2 = 0x8b63b887f1d049e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_app_manager_msgs/StartRappResponse";
  }

  static const char* value(const ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool started\n\
\n\
\n\
int32 error_code\n\
\n\
\n\
string message\n\
\n\
\n\
string application_namespace\n\
\n\
";
  }

  static const char* value(const ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.started);
      stream.next(m.error_code);
      stream.next(m.message);
      stream.next(m.application_namespace);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartRappResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rocon_app_manager_msgs::StartRappResponse_<ContainerAllocator>& v)
  {
    s << indent << "started: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.started);
    s << indent << "error_code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.error_code);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "application_namespace: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.application_namespace);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_APP_MANAGER_MSGS_MESSAGE_STARTRAPPRESPONSE_H
