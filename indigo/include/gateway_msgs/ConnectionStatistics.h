// Generated by gencpp from file gateway_msgs/ConnectionStatistics.msg
// DO NOT EDIT!


#ifndef GATEWAY_MSGS_MESSAGE_CONNECTIONSTATISTICS_H
#define GATEWAY_MSGS_MESSAGE_CONNECTIONSTATISTICS_H


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
struct ConnectionStatistics_
{
  typedef ConnectionStatistics_<ContainerAllocator> Type;

  ConnectionStatistics_()
    : gateway_available(false)
    , time_since_last_seen(0)
    , ping_latency_min(0.0)
    , ping_latency_max(0.0)
    , ping_latency_avg(0.0)
    , ping_latency_mdev(0.0)
    , network_info_available(false)
    , network_type(0)
    , wireless_bitrate(0.0)
    , wireless_link_quality(0)
    , wireless_signal_level(0.0)
    , wireless_noise_level(0.0)  {
    }
  ConnectionStatistics_(const ContainerAllocator& _alloc)
    : gateway_available(false)
    , time_since_last_seen(0)
    , ping_latency_min(0.0)
    , ping_latency_max(0.0)
    , ping_latency_avg(0.0)
    , ping_latency_mdev(0.0)
    , network_info_available(false)
    , network_type(0)
    , wireless_bitrate(0.0)
    , wireless_link_quality(0)
    , wireless_signal_level(0.0)
    , wireless_noise_level(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _gateway_available_type;
  _gateway_available_type gateway_available;

   typedef int64_t _time_since_last_seen_type;
  _time_since_last_seen_type time_since_last_seen;

   typedef float _ping_latency_min_type;
  _ping_latency_min_type ping_latency_min;

   typedef float _ping_latency_max_type;
  _ping_latency_max_type ping_latency_max;

   typedef float _ping_latency_avg_type;
  _ping_latency_avg_type ping_latency_avg;

   typedef float _ping_latency_mdev_type;
  _ping_latency_mdev_type ping_latency_mdev;

   typedef uint8_t _network_info_available_type;
  _network_info_available_type network_info_available;

   typedef int8_t _network_type_type;
  _network_type_type network_type;

   typedef float _wireless_bitrate_type;
  _wireless_bitrate_type wireless_bitrate;

   typedef int8_t _wireless_link_quality_type;
  _wireless_link_quality_type wireless_link_quality;

   typedef float _wireless_signal_level_type;
  _wireless_signal_level_type wireless_signal_level;

   typedef float _wireless_noise_level_type;
  _wireless_noise_level_type wireless_noise_level;


    enum { WIRED = 1 };
     enum { WIRELESS = 2 };
     enum { MAX_TTL = 86400 };
 

  typedef boost::shared_ptr< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> const> ConstPtr;

}; // struct ConnectionStatistics_

typedef ::gateway_msgs::ConnectionStatistics_<std::allocator<void> > ConnectionStatistics;

typedef boost::shared_ptr< ::gateway_msgs::ConnectionStatistics > ConnectionStatisticsPtr;
typedef boost::shared_ptr< ::gateway_msgs::ConnectionStatistics const> ConnectionStatisticsConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gateway_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'gateway_msgs': ['/tmp/binarydeb/ros-indigo-gateway-msgs-0.7.12/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "672067d5ab3e6157dcf8224022da3ee6";
  }

  static const char* value(const ::gateway_msgs::ConnectionStatistics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x672067d5ab3e6157ULL;
  static const uint64_t static_value2 = 0xdcf8224022da3ee6ULL;
};

template<class ContainerAllocator>
struct DataType< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gateway_msgs/ConnectionStatistics";
  }

  static const char* value(const ::gateway_msgs::ConnectionStatistics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Constants\n\
int8 WIRED = 1\n\
int8 WIRELESS = 2\n\
int32 MAX_TTL = 86400\n\
\n\
# Gateway ping indicators\n\
bool gateway_available\n\
int64 time_since_last_seen #time in seconds since last ping successful\n\
float32 ping_latency_min\n\
float32 ping_latency_max\n\
float32 ping_latency_avg\n\
float32 ping_latency_mdev #mean absolute deviation\n\
\n\
# Gateway network information indicators\n\
bool network_info_available\n\
int8 network_type\n\
float32 wireless_bitrate\n\
int8 wireless_link_quality\n\
float32 wireless_signal_level\n\
float32 wireless_noise_level\n\
\n\
\n\
";
  }

  static const char* value(const ::gateway_msgs::ConnectionStatistics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gateway_available);
      stream.next(m.time_since_last_seen);
      stream.next(m.ping_latency_min);
      stream.next(m.ping_latency_max);
      stream.next(m.ping_latency_avg);
      stream.next(m.ping_latency_mdev);
      stream.next(m.network_info_available);
      stream.next(m.network_type);
      stream.next(m.wireless_bitrate);
      stream.next(m.wireless_link_quality);
      stream.next(m.wireless_signal_level);
      stream.next(m.wireless_noise_level);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConnectionStatistics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gateway_msgs::ConnectionStatistics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gateway_msgs::ConnectionStatistics_<ContainerAllocator>& v)
  {
    s << indent << "gateway_available: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gateway_available);
    s << indent << "time_since_last_seen: ";
    Printer<int64_t>::stream(s, indent + "  ", v.time_since_last_seen);
    s << indent << "ping_latency_min: ";
    Printer<float>::stream(s, indent + "  ", v.ping_latency_min);
    s << indent << "ping_latency_max: ";
    Printer<float>::stream(s, indent + "  ", v.ping_latency_max);
    s << indent << "ping_latency_avg: ";
    Printer<float>::stream(s, indent + "  ", v.ping_latency_avg);
    s << indent << "ping_latency_mdev: ";
    Printer<float>::stream(s, indent + "  ", v.ping_latency_mdev);
    s << indent << "network_info_available: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.network_info_available);
    s << indent << "network_type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.network_type);
    s << indent << "wireless_bitrate: ";
    Printer<float>::stream(s, indent + "  ", v.wireless_bitrate);
    s << indent << "wireless_link_quality: ";
    Printer<int8_t>::stream(s, indent + "  ", v.wireless_link_quality);
    s << indent << "wireless_signal_level: ";
    Printer<float>::stream(s, indent + "  ", v.wireless_signal_level);
    s << indent << "wireless_noise_level: ";
    Printer<float>::stream(s, indent + "  ", v.wireless_noise_level);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GATEWAY_MSGS_MESSAGE_CONNECTIONSTATISTICS_H
