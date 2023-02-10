// Generated by gencpp from file assignment_2_2022/position.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2022_MESSAGE_POSITION_H
#define ASSIGNMENT_2_2022_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment_2_2022
{
template <class ContainerAllocator>
struct position_
{
  typedef position_<ContainerAllocator> Type;

  position_()
    : x_pos(0.0)
    , y_pos(0.0)
    , x_velocity_val(0.0)
    , y_velocity_val(0.0)  {
    }
  position_(const ContainerAllocator& _alloc)
    : x_pos(0.0)
    , y_pos(0.0)
    , x_velocity_val(0.0)
    , y_velocity_val(0.0)  {
  (void)_alloc;
    }



   typedef float _x_pos_type;
  _x_pos_type x_pos;

   typedef float _y_pos_type;
  _y_pos_type y_pos;

   typedef float _x_velocity_val_type;
  _x_velocity_val_type x_velocity_val;

   typedef float _y_velocity_val_type;
  _y_velocity_val_type y_velocity_val;





  typedef boost::shared_ptr< ::assignment_2_2022::position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_2_2022::position_<ContainerAllocator> const> ConstPtr;

}; // struct position_

typedef ::assignment_2_2022::position_<std::allocator<void> > position;

typedef boost::shared_ptr< ::assignment_2_2022::position > positionPtr;
typedef boost::shared_ptr< ::assignment_2_2022::position const> positionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_2_2022::position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_2_2022::position_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::assignment_2_2022::position_<ContainerAllocator1> & lhs, const ::assignment_2_2022::position_<ContainerAllocator2> & rhs)
{
  return lhs.x_pos == rhs.x_pos &&
    lhs.y_pos == rhs.y_pos &&
    lhs.x_velocity_val == rhs.x_velocity_val &&
    lhs.y_velocity_val == rhs.y_velocity_val;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::assignment_2_2022::position_<ContainerAllocator1> & lhs, const ::assignment_2_2022::position_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace assignment_2_2022

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2022::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_2_2022::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2022::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_2_2022::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2022::position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_2_2022::position_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_2_2022::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51353523648c2b26e75c869e3b7fb600";
  }

  static const char* value(const ::assignment_2_2022::position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51353523648c2b26ULL;
  static const uint64_t static_value2 = 0xe75c869e3b7fb600ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_2_2022::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_2_2022/position";
  }

  static const char* value(const ::assignment_2_2022::position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_2_2022::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x_pos\n"
"float32 y_pos\n"
"float32 x_velocity_val\n"
"float32 y_velocity_val\n"
;
  }

  static const char* value(const ::assignment_2_2022::position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_2_2022::position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_pos);
      stream.next(m.y_pos);
      stream.next(m.x_velocity_val);
      stream.next(m.y_velocity_val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_2_2022::position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment_2_2022::position_<ContainerAllocator>& v)
  {
    s << indent << "x_pos: ";
    Printer<float>::stream(s, indent + "  ", v.x_pos);
    s << indent << "y_pos: ";
    Printer<float>::stream(s, indent + "  ", v.y_pos);
    s << indent << "x_velocity_val: ";
    Printer<float>::stream(s, indent + "  ", v.x_velocity_val);
    s << indent << "y_velocity_val: ";
    Printer<float>::stream(s, indent + "  ", v.y_velocity_val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_2_2022_MESSAGE_POSITION_H
