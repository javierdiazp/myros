# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rocon_interaction_msgs/InteractiveClients.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import uuid_msgs.msg
import rocon_interaction_msgs.msg
import rocon_std_msgs.msg

class InteractiveClients(genpy.Message):
  _md5sum = "4c44b146c4dbd365e79e0f9e065f21d8"
  _type = "rocon_interaction_msgs/InteractiveClients"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# 
# Two lists are included here to distinguish between idle clients and those that
# are currently running an app.
#
InteractiveClient[] idle_clients
InteractiveClient[] running_clients

================================================================================
MSG: rocon_interaction_msgs/InteractiveClient
# 
# Describes an interactive concert client.
#
# Unique names - human consumable rocon name as well as globally unique name
# provided by the remocon client.

string name
uuid_msgs/UniqueID id

rocon_std_msgs/PlatformInfo platform_info

# easy to read display names of interactions running on this remocon
string[] running_interactions

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: rocon_std_msgs/PlatformInfo
# Provides platform details for robots, software or human
# interactive devices.

########################### Variables ###########################

# rocon universal resource identifier
string uri
# rocon version compatibility identifier (used when connecting to concerts)
string version
Icon icon

================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  "jpeg" or "png"
string format

# Image data.
uint8[] data"""
  __slots__ = ['idle_clients','running_clients']
  _slot_types = ['rocon_interaction_msgs/InteractiveClient[]','rocon_interaction_msgs/InteractiveClient[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       idle_clients,running_clients

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InteractiveClients, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.idle_clients is None:
        self.idle_clients = []
      if self.running_clients is None:
        self.running_clients = []
    else:
      self.idle_clients = []
      self.running_clients = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.idle_clients)
      buff.write(_struct_I.pack(length))
      for val1 in self.idle_clients:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v1 = val1.id
        _x = _v1.uuid
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_struct_16B.pack(*_x))
        else:
          buff.write(_struct_16s.pack(_x))
        _v2 = val1.platform_info
        _x = _v2.uri
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v2.version
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v3 = _v2.icon
        _x = _v3.resource_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v3.format
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v3.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.running_interactions)
        buff.write(_struct_I.pack(length))
        for val2 in val1.running_interactions:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *val2))
          else:
            buff.write(struct.pack('<I%ss'%length, length, val2))
      length = len(self.running_clients)
      buff.write(_struct_I.pack(length))
      for val1 in self.running_clients:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v4 = val1.id
        _x = _v4.uuid
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_struct_16B.pack(*_x))
        else:
          buff.write(_struct_16s.pack(_x))
        _v5 = val1.platform_info
        _x = _v5.uri
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v5.version
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v6 = _v5.icon
        _x = _v6.resource_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v6.format
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v6.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.running_interactions)
        buff.write(_struct_I.pack(length))
        for val2 in val1.running_interactions:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *val2))
          else:
            buff.write(struct.pack('<I%ss'%length, length, val2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.idle_clients is None:
        self.idle_clients = None
      if self.running_clients is None:
        self.running_clients = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.idle_clients = []
      for i in range(0, length):
        val1 = rocon_interaction_msgs.msg.InteractiveClient()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _v7 = val1.id
        start = end
        end += 16
        _v7.uuid = str[start:end]
        _v8 = val1.platform_info
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v8.uri = str[start:end].decode('utf-8')
        else:
          _v8.uri = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v8.version = str[start:end].decode('utf-8')
        else:
          _v8.version = str[start:end]
        _v9 = _v8.icon
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v9.resource_name = str[start:end].decode('utf-8')
        else:
          _v9.resource_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v9.format = str[start:end].decode('utf-8')
        else:
          _v9.format = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v9.data = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.running_interactions = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.running_interactions.append(val2)
        self.idle_clients.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.running_clients = []
      for i in range(0, length):
        val1 = rocon_interaction_msgs.msg.InteractiveClient()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _v10 = val1.id
        start = end
        end += 16
        _v10.uuid = str[start:end]
        _v11 = val1.platform_info
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v11.uri = str[start:end].decode('utf-8')
        else:
          _v11.uri = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v11.version = str[start:end].decode('utf-8')
        else:
          _v11.version = str[start:end]
        _v12 = _v11.icon
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v12.resource_name = str[start:end].decode('utf-8')
        else:
          _v12.resource_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v12.format = str[start:end].decode('utf-8')
        else:
          _v12.format = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v12.data = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.running_interactions = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.running_interactions.append(val2)
        self.running_clients.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.idle_clients)
      buff.write(_struct_I.pack(length))
      for val1 in self.idle_clients:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v13 = val1.id
        _x = _v13.uuid
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_struct_16B.pack(*_x))
        else:
          buff.write(_struct_16s.pack(_x))
        _v14 = val1.platform_info
        _x = _v14.uri
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v14.version
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v15 = _v14.icon
        _x = _v15.resource_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v15.format
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v15.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.running_interactions)
        buff.write(_struct_I.pack(length))
        for val2 in val1.running_interactions:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *val2))
          else:
            buff.write(struct.pack('<I%ss'%length, length, val2))
      length = len(self.running_clients)
      buff.write(_struct_I.pack(length))
      for val1 in self.running_clients:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v16 = val1.id
        _x = _v16.uuid
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(_struct_16B.pack(*_x))
        else:
          buff.write(_struct_16s.pack(_x))
        _v17 = val1.platform_info
        _x = _v17.uri
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v17.version
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v18 = _v17.icon
        _x = _v18.resource_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v18.format
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v18.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.running_interactions)
        buff.write(_struct_I.pack(length))
        for val2 in val1.running_interactions:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *val2))
          else:
            buff.write(struct.pack('<I%ss'%length, length, val2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.idle_clients is None:
        self.idle_clients = None
      if self.running_clients is None:
        self.running_clients = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.idle_clients = []
      for i in range(0, length):
        val1 = rocon_interaction_msgs.msg.InteractiveClient()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _v19 = val1.id
        start = end
        end += 16
        _v19.uuid = str[start:end]
        _v20 = val1.platform_info
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v20.uri = str[start:end].decode('utf-8')
        else:
          _v20.uri = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v20.version = str[start:end].decode('utf-8')
        else:
          _v20.version = str[start:end]
        _v21 = _v20.icon
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v21.resource_name = str[start:end].decode('utf-8')
        else:
          _v21.resource_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v21.format = str[start:end].decode('utf-8')
        else:
          _v21.format = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v21.data = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.running_interactions = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.running_interactions.append(val2)
        self.idle_clients.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.running_clients = []
      for i in range(0, length):
        val1 = rocon_interaction_msgs.msg.InteractiveClient()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _v22 = val1.id
        start = end
        end += 16
        _v22.uuid = str[start:end]
        _v23 = val1.platform_info
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v23.uri = str[start:end].decode('utf-8')
        else:
          _v23.uri = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v23.version = str[start:end].decode('utf-8')
        else:
          _v23.version = str[start:end]
        _v24 = _v23.icon
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v24.resource_name = str[start:end].decode('utf-8')
        else:
          _v24.resource_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v24.format = str[start:end].decode('utf-8')
        else:
          _v24.format = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v24.data = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.running_interactions = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8')
          else:
            val2 = str[start:end]
          val1.running_interactions.append(val2)
        self.running_clients.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_16B = struct.Struct("<16B")
_struct_16s = struct.Struct("<16s")
