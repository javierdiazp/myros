// Generated by gencpp from file gateway_msgs/ConnectHubResponse.msg
// DO NOT EDIT!


#ifndef GATEWAY_MSGS_MESSAGE_CONNECTHUBRESPONSE_H
#define GATEWAY_MSGS_MESSAGE_CONNECTHUBRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gateway_msgs
{
template <class ContainerAllocator>
struct ConnectHubResponse_
{
  typedef ConnectHubResponse_<ContainerAllocator> Type;

  ConnectHubResponse_()
    : result(0)
    , error_message()  {
    }
  ConnectHubResponse_(const ContainerAllocator& _alloc)
    : result(0)
    , error_message(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _result_type;
  _result_type result;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_message_type;
  _error_message_type error_message;




  typedef boost::shared_ptr< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ConnectHubResponse_

typedef ::gateway_msgs::ConnectHubResponse_<std::allocator<void> > ConnectHubResponse;

typedef boost::shared_ptr< ::gateway_msgs::ConnectHubResponse > ConnectHubResponsePtr;
typedef boost::shared_ptr< ::gateway_msgs::ConnectHubResponse const> ConnectHubResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gateway_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'gateway_msgs': ['/tmp/binarydeb/ros-indigo-gateway-msgs-0.7.12/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cb1e85ae0c5f4b1c31221493724cc5aa";
  }

  static const char* value(const ::gateway_msgs::ConnectHubResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcb1e85ae0c5f4b1cULL;
  static const uint64_t static_value2 = 0x31221493724cc5aaULL;
};

template<class ContainerAllocator>
struct DataType< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gateway_msgs/ConnectHubResponse";
  }

  static const char* value(const ::gateway_msgs::ConnectHubResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
int8 result\n\
string error_message\n\
\n\
\n\
";
  }

  static const char* value(const ::gateway_msgs::ConnectHubResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.error_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConnectHubResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gateway_msgs::ConnectHubResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gateway_msgs::ConnectHubResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int8_t>::stream(s, indent + "  ", v.result);
    s << indent << "error_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GATEWAY_MSGS_MESSAGE_CONNECTHUBRESPONSE_H
