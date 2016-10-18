// Generated by gencpp from file capabilities/EstablishBond.msg
// DO NOT EDIT!


#ifndef CAPABILITIES_MESSAGE_ESTABLISHBOND_H
#define CAPABILITIES_MESSAGE_ESTABLISHBOND_H

#include <ros/service_traits.h>


#include <capabilities/EstablishBondRequest.h>
#include <capabilities/EstablishBondResponse.h>


namespace capabilities
{

struct EstablishBond
{

typedef EstablishBondRequest Request;
typedef EstablishBondResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EstablishBond
} // namespace capabilities


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::capabilities::EstablishBond > {
  static const char* value()
  {
    return "5dec67991af973eddfa86dc20c3faef0";
  }

  static const char* value(const ::capabilities::EstablishBond&) { return value(); }
};

template<>
struct DataType< ::capabilities::EstablishBond > {
  static const char* value()
  {
    return "capabilities/EstablishBond";
  }

  static const char* value(const ::capabilities::EstablishBond&) { return value(); }
};


// service_traits::MD5Sum< ::capabilities::EstablishBondRequest> should match 
// service_traits::MD5Sum< ::capabilities::EstablishBond > 
template<>
struct MD5Sum< ::capabilities::EstablishBondRequest>
{
  static const char* value()
  {
    return MD5Sum< ::capabilities::EstablishBond >::value();
  }
  static const char* value(const ::capabilities::EstablishBondRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::capabilities::EstablishBondRequest> should match 
// service_traits::DataType< ::capabilities::EstablishBond > 
template<>
struct DataType< ::capabilities::EstablishBondRequest>
{
  static const char* value()
  {
    return DataType< ::capabilities::EstablishBond >::value();
  }
  static const char* value(const ::capabilities::EstablishBondRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::capabilities::EstablishBondResponse> should match 
// service_traits::MD5Sum< ::capabilities::EstablishBond > 
template<>
struct MD5Sum< ::capabilities::EstablishBondResponse>
{
  static const char* value()
  {
    return MD5Sum< ::capabilities::EstablishBond >::value();
  }
  static const char* value(const ::capabilities::EstablishBondResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::capabilities::EstablishBondResponse> should match 
// service_traits::DataType< ::capabilities::EstablishBond > 
template<>
struct DataType< ::capabilities::EstablishBondResponse>
{
  static const char* value()
  {
    return DataType< ::capabilities::EstablishBond >::value();
  }
  static const char* value(const ::capabilities::EstablishBondResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAPABILITIES_MESSAGE_ESTABLISHBOND_H
