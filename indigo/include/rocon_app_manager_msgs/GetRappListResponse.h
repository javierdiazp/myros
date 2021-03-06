// Generated by gencpp from file rocon_app_manager_msgs/GetRappListResponse.msg
// DO NOT EDIT!


#ifndef ROCON_APP_MANAGER_MSGS_MESSAGE_GETRAPPLISTRESPONSE_H
#define ROCON_APP_MANAGER_MSGS_MESSAGE_GETRAPPLISTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rocon_app_manager_msgs/Rapp.h>
#include <rocon_app_manager_msgs/Rapp.h>

namespace rocon_app_manager_msgs
{
template <class ContainerAllocator>
struct GetRappListResponse_
{
  typedef GetRappListResponse_<ContainerAllocator> Type;

  GetRappListResponse_()
    : available_rapps()
    , running_rapps()  {
    }
  GetRappListResponse_(const ContainerAllocator& _alloc)
    : available_rapps(_alloc)
    , running_rapps(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::rocon_app_manager_msgs::Rapp_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rocon_app_manager_msgs::Rapp_<ContainerAllocator> >::other >  _available_rapps_type;
  _available_rapps_type available_rapps;

   typedef std::vector< ::rocon_app_manager_msgs::Rapp_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rocon_app_manager_msgs::Rapp_<ContainerAllocator> >::other >  _running_rapps_type;
  _running_rapps_type running_rapps;




  typedef boost::shared_ptr< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetRappListResponse_

typedef ::rocon_app_manager_msgs::GetRappListResponse_<std::allocator<void> > GetRappListResponse;

typedef boost::shared_ptr< ::rocon_app_manager_msgs::GetRappListResponse > GetRappListResponsePtr;
typedef boost::shared_ptr< ::rocon_app_manager_msgs::GetRappListResponse const> GetRappListResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "68cf30e80880962b92b2794f1f078c7f";
  }

  static const char* value(const ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x68cf30e80880962bULL;
  static const uint64_t static_value2 = 0x92b2794f1f078c7fULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_app_manager_msgs/GetRappListResponse";
  }

  static const char* value(const ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Rapp[] available_rapps\n\
Rapp[] running_rapps\n\
\n\
\n\
================================================================================\n\
MSG: rocon_app_manager_msgs/Rapp\n\
# This is the message that gets published in list_rapps. Do not think of it as the\n\
# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)\n\
# Rather it is the published list of rapps with the required information for the concert\n\
# and some introspection.\n\
\n\
# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)\n\
string name\n\
# user-friendly display name\n\
string display_name\n\
string description\n\
# a rocon uri string indicating platform compatibility\n\
string compatibility\n\
string status\n\
\n\
# a list of implementations\n\
string[] implementations\n\
\n\
# A preferred rapp for virtual rapp\n\
string preferred\n\
\n\
# icon for showing the app\n\
rocon_std_msgs/Icon icon\n\
\n\
# public interface and parameters\n\
rocon_std_msgs/KeyValue[] public_interface\n\
rocon_std_msgs/KeyValue[] public_parameters\n\
\n\
================================================================================\n\
MSG: rocon_std_msgs/Icon\n\
# Used to idenfity the original package/filename resource this icon was/is to be loaded from\n\
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.\n\
string resource_name\n\
\n\
# Image data format.  \"jpeg\" or \"png\"\n\
string format\n\
\n\
# Image data.\n\
uint8[] data\n\
================================================================================\n\
MSG: rocon_std_msgs/KeyValue\n\
string key\n\
string value\n\
";
  }

  static const char* value(const ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.available_rapps);
      stream.next(m.running_rapps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetRappListResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rocon_app_manager_msgs::GetRappListResponse_<ContainerAllocator>& v)
  {
    s << indent << "available_rapps[]" << std::endl;
    for (size_t i = 0; i < v.available_rapps.size(); ++i)
    {
      s << indent << "  available_rapps[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rocon_app_manager_msgs::Rapp_<ContainerAllocator> >::stream(s, indent + "    ", v.available_rapps[i]);
    }
    s << indent << "running_rapps[]" << std::endl;
    for (size_t i = 0; i < v.running_rapps.size(); ++i)
    {
      s << indent << "  running_rapps[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rocon_app_manager_msgs::Rapp_<ContainerAllocator> >::stream(s, indent + "    ", v.running_rapps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_APP_MANAGER_MSGS_MESSAGE_GETRAPPLISTRESPONSE_H
