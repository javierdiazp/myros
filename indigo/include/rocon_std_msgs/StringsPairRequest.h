// Generated by gencpp from file rocon_std_msgs/StringsPairRequest.msg
// DO NOT EDIT!


#ifndef ROCON_STD_MSGS_MESSAGE_STRINGSPAIRREQUEST_H
#define ROCON_STD_MSGS_MESSAGE_STRINGSPAIRREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <uuid_msgs/UniqueID.h>
#include <rocon_std_msgs/StringsRequest.h>

namespace rocon_std_msgs
{
template <class ContainerAllocator>
struct StringsPairRequest_
{
  typedef StringsPairRequest_<ContainerAllocator> Type;

  StringsPairRequest_()
    : id()
    , request()  {
    }
  StringsPairRequest_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , request(_alloc)  {
  (void)_alloc;
    }



   typedef  ::uuid_msgs::UniqueID_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::rocon_std_msgs::StringsRequest_<ContainerAllocator>  _request_type;
  _request_type request;




  typedef boost::shared_ptr< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StringsPairRequest_

typedef ::rocon_std_msgs::StringsPairRequest_<std::allocator<void> > StringsPairRequest;

typedef boost::shared_ptr< ::rocon_std_msgs::StringsPairRequest > StringsPairRequestPtr;
typedef boost::shared_ptr< ::rocon_std_msgs::StringsPairRequest const> StringsPairRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rocon_std_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/tmp/binarydeb/ros-indigo-rocon-std-msgs-0.7.12/msg', '/tmp/binarydeb/ros-indigo-rocon-std-msgs-0.7.12/obj-i686-linux-gnu/devel/share/rocon_std_msgs/msg'], 'rocon_service_pair_msgs': ['/opt/ros/indigo/share/rocon_service_pair_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/indigo/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "71ec95e384ce52aa32491f3b69a62027";
  }

  static const char* value(const ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x71ec95e384ce52aaULL;
  static const uint64_t static_value2 = 0x32491f3b69a62027ULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_std_msgs/StringsPairRequest";
  }

  static const char* value(const ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM A SERVICE PAIR DEFINITION ======\n\
\n\
uuid_msgs/UniqueID id\n\
StringsRequest request\n\
\n\
================================================================================\n\
MSG: uuid_msgs/UniqueID\n\
# A universally unique identifier (UUID).\n\
#\n\
#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n\
#  http://tools.ietf.org/html/rfc4122.html\n\
\n\
uint8[16] uuid\n\
\n\
================================================================================\n\
MSG: rocon_std_msgs/StringsRequest\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM A SERVICE PAIR DEFINITION ======\n\
\n\
string data\n\
";
  }

  static const char* value(const ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.request);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StringsPairRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rocon_std_msgs::StringsPairRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    s << std::endl;
    Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "request: ";
    s << std::endl;
    Printer< ::rocon_std_msgs::StringsRequest_<ContainerAllocator> >::stream(s, indent + "  ", v.request);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_STD_MSGS_MESSAGE_STRINGSPAIRREQUEST_H
