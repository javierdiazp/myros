// Generated by gencpp from file rocon_interaction_msgs/InteractiveClient.msg
// DO NOT EDIT!


#ifndef ROCON_INTERACTION_MSGS_MESSAGE_INTERACTIVECLIENT_H
#define ROCON_INTERACTION_MSGS_MESSAGE_INTERACTIVECLIENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <uuid_msgs/UniqueID.h>
#include <rocon_std_msgs/PlatformInfo.h>

namespace rocon_interaction_msgs
{
template <class ContainerAllocator>
struct InteractiveClient_
{
  typedef InteractiveClient_<ContainerAllocator> Type;

  InteractiveClient_()
    : name()
    , id()
    , platform_info()
    , running_interactions()  {
    }
  InteractiveClient_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , id(_alloc)
    , platform_info(_alloc)
    , running_interactions(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef  ::uuid_msgs::UniqueID_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::rocon_std_msgs::PlatformInfo_<ContainerAllocator>  _platform_info_type;
  _platform_info_type platform_info;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _running_interactions_type;
  _running_interactions_type running_interactions;




  typedef boost::shared_ptr< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> const> ConstPtr;

}; // struct InteractiveClient_

typedef ::rocon_interaction_msgs::InteractiveClient_<std::allocator<void> > InteractiveClient;

typedef boost::shared_ptr< ::rocon_interaction_msgs::InteractiveClient > InteractiveClientPtr;
typedef boost::shared_ptr< ::rocon_interaction_msgs::InteractiveClient const> InteractiveClientConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rocon_interaction_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/opt/ros/indigo/share/rocon_std_msgs/cmake/../msg'], 'rocon_service_pair_msgs': ['/opt/ros/indigo/share/rocon_service_pair_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'rocon_interaction_msgs': ['/tmp/binarydeb/ros-indigo-rocon-interaction-msgs-0.7.12/msg'], 'uuid_msgs': ['/opt/ros/indigo/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8f65f317e0815a1ab6774b422c35d05";
  }

  static const char* value(const ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8f65f317e0815a1ULL;
  static const uint64_t static_value2 = 0xab6774b422c35d05ULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_interaction_msgs/InteractiveClient";
  }

  static const char* value(const ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# \n\
# Describes an interactive concert client.\n\
#\n\
# Unique names - human consumable rocon name as well as globally unique name\n\
# provided by the remocon client.\n\
\n\
string name\n\
uuid_msgs/UniqueID id\n\
\n\
rocon_std_msgs/PlatformInfo platform_info\n\
\n\
# easy to read display names of interactions running on this remocon\n\
string[] running_interactions\n\
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
MSG: rocon_std_msgs/PlatformInfo\n\
# Provides platform details for robots, software or human\n\
# interactive devices.\n\
\n\
########################### Variables ###########################\n\
\n\
# rocon universal resource identifier\n\
string uri\n\
# rocon version compatibility identifier (used when connecting to concerts)\n\
string version\n\
Icon icon\n\
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
";
  }

  static const char* value(const ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.id);
      stream.next(m.platform_info);
      stream.next(m.running_interactions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InteractiveClient_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rocon_interaction_msgs::InteractiveClient_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "id: ";
    s << std::endl;
    Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "platform_info: ";
    s << std::endl;
    Printer< ::rocon_std_msgs::PlatformInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.platform_info);
    s << indent << "running_interactions[]" << std::endl;
    for (size_t i = 0; i < v.running_interactions.size(); ++i)
    {
      s << indent << "  running_interactions[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.running_interactions[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_INTERACTION_MSGS_MESSAGE_INTERACTIVECLIENT_H
