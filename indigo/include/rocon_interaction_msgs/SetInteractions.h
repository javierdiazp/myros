// Generated by gencpp from file rocon_interaction_msgs/SetInteractions.msg
// DO NOT EDIT!


#ifndef ROCON_INTERACTION_MSGS_MESSAGE_SETINTERACTIONS_H
#define ROCON_INTERACTION_MSGS_MESSAGE_SETINTERACTIONS_H

#include <ros/service_traits.h>


#include <rocon_interaction_msgs/SetInteractionsRequest.h>
#include <rocon_interaction_msgs/SetInteractionsResponse.h>


namespace rocon_interaction_msgs
{

struct SetInteractions
{

typedef SetInteractionsRequest Request;
typedef SetInteractionsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetInteractions
} // namespace rocon_interaction_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rocon_interaction_msgs::SetInteractions > {
  static const char* value()
  {
    return "caa1e6b6a9707f4e18786c6cfde77aca";
  }

  static const char* value(const ::rocon_interaction_msgs::SetInteractions&) { return value(); }
};

template<>
struct DataType< ::rocon_interaction_msgs::SetInteractions > {
  static const char* value()
  {
    return "rocon_interaction_msgs/SetInteractions";
  }

  static const char* value(const ::rocon_interaction_msgs::SetInteractions&) { return value(); }
};


// service_traits::MD5Sum< ::rocon_interaction_msgs::SetInteractionsRequest> should match 
// service_traits::MD5Sum< ::rocon_interaction_msgs::SetInteractions > 
template<>
struct MD5Sum< ::rocon_interaction_msgs::SetInteractionsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rocon_interaction_msgs::SetInteractions >::value();
  }
  static const char* value(const ::rocon_interaction_msgs::SetInteractionsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rocon_interaction_msgs::SetInteractionsRequest> should match 
// service_traits::DataType< ::rocon_interaction_msgs::SetInteractions > 
template<>
struct DataType< ::rocon_interaction_msgs::SetInteractionsRequest>
{
  static const char* value()
  {
    return DataType< ::rocon_interaction_msgs::SetInteractions >::value();
  }
  static const char* value(const ::rocon_interaction_msgs::SetInteractionsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rocon_interaction_msgs::SetInteractionsResponse> should match 
// service_traits::MD5Sum< ::rocon_interaction_msgs::SetInteractions > 
template<>
struct MD5Sum< ::rocon_interaction_msgs::SetInteractionsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rocon_interaction_msgs::SetInteractions >::value();
  }
  static const char* value(const ::rocon_interaction_msgs::SetInteractionsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rocon_interaction_msgs::SetInteractionsResponse> should match 
// service_traits::DataType< ::rocon_interaction_msgs::SetInteractions > 
template<>
struct DataType< ::rocon_interaction_msgs::SetInteractionsResponse>
{
  static const char* value()
  {
    return DataType< ::rocon_interaction_msgs::SetInteractions >::value();
  }
  static const char* value(const ::rocon_interaction_msgs::SetInteractionsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROCON_INTERACTION_MSGS_MESSAGE_SETINTERACTIONS_H
