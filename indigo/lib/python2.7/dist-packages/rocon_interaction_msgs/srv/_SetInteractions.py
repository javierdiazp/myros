# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rocon_interaction_msgs/SetInteractionsRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rocon_interaction_msgs.msg
import rocon_std_msgs.msg

class SetInteractionsRequest(genpy.Message):
  _md5sum = "2caa7a9f7de16d4d5802285040b671c3"
  _type = "rocon_interaction_msgs/SetInteractionsRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

Interaction[] interactions


bool load


================================================================================
MSG: rocon_interaction_msgs/Interaction
###############################################################
# Non-modifiable Specifications
###############################################################
# These should be stored in a meta-repository somewhere.
#
# Name of the interaction. This should be the string
# required to install and execute the application on the remocon's
# end. e.g. for android app this will be an intent action name such as
# com.github.rosjava.android_apps.listener.Listener, while for
# a web app it will be its URL.
string name

# A rocon uri string denoting the platforms this interaction
# is compatible with
string compatibility

###############################################################
# Variable Specifications
###############################################################

# User friendly version of the name. Useful to be customised
# differently from the name for either 1) branding, or 2) because
# some names are complicated visually (e.g. android names).
string display_name
 
# Should be a default for the interaction, but sometimes useful to
# override it to provide more human friendly information.
string description

# The namespace that this interaction will be associated
# with. Interfaces from the interaction will be automatically pushed
# into this namespace (for concerts it will be typically
# used by the services to push interfaces into /services/_service_name_).
# It is up to the user to make sure this is unique to avoid
# potential conflicts.
string namespace

# Again, should exist a default, but may want to override it.
rocon_std_msgs/Icon icon

# Any remappings that need to be applied
rocon_std_msgs/Remapping[] remappings

# Yaml string representing parameters for the interaction
string parameters

# Maximum number of permitted connections (-1 = any)
int32 UNLIMITED_INTERACTIONS = -1
int32 max

# The configuration for a pairing if this interaction is to be paired
# with a rapp. If not, it should be left unfilled.
Pairing pairing

###############################################################
# Parameters finalised by the interactions manager
###############################################################

# This is a crc32 hash code for the service-role-name
# unique string that identifies this interaction.
# crc32 gets a few collisions, so we should be careful of that.
# It is used by the nfc android auto-launching program so we can
# compactify the request in the url sent by the nfc to the autolauncher.
int32 hash

# The role this solution has configured the interaction for. This is in
# some use cases redundant, and in other use cases essential (e.g.
# headless launcher)
string role
================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  "jpeg" or "png"
string format

# Image data.
uint8[] data
================================================================================
MSG: rocon_std_msgs/Remapping
# Describes your typical ros remapping

string remap_from
string remap_to

================================================================================
MSG: rocon_interaction_msgs/Pairing
# Properties of a paired app that is destined to work with a rocon interaction.

# ros resource name of the rapp, e.g. rocon_apps/talker
string rapp

rocon_std_msgs/Remapping[] remappings

# Key value pairs representing rapp parameters
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value"""
  __slots__ = ['interactions','load']
  _slot_types = ['rocon_interaction_msgs/Interaction[]','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       interactions,load

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetInteractionsRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.interactions is None:
        self.interactions = []
      if self.load is None:
        self.load = False
    else:
      self.interactions = []
      self.load = False

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
      length = len(self.interactions)
      buff.write(_struct_I.pack(length))
      for val1 in self.interactions:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.compatibility
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.display_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.description
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.namespace
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v1 = val1.icon
        _x = _v1.resource_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v1.format
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v1.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.remappings)
        buff.write(_struct_I.pack(length))
        for val2 in val1.remappings:
          _x = val2.remap_from
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2.remap_to
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.parameters
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_i.pack(val1.max))
        _v2 = val1.pairing
        _x = _v2.rapp
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(_v2.remappings)
        buff.write(_struct_I.pack(length))
        for val3 in _v2.remappings:
          _x = val3.remap_from
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val3.remap_to
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(_v2.parameters)
        buff.write(_struct_I.pack(length))
        for val3 in _v2.parameters:
          _x = val3.key
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val3.value
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_i.pack(val1.hash))
        _x = val1.role
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.load))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.interactions is None:
        self.interactions = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.interactions = []
      for i in range(0, length):
        val1 = rocon_interaction_msgs.msg.Interaction()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.compatibility = str[start:end].decode('utf-8')
        else:
          val1.compatibility = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.display_name = str[start:end].decode('utf-8')
        else:
          val1.display_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.description = str[start:end].decode('utf-8')
        else:
          val1.description = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.namespace = str[start:end].decode('utf-8')
        else:
          val1.namespace = str[start:end]
        _v3 = val1.icon
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.resource_name = str[start:end].decode('utf-8')
        else:
          _v3.resource_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.format = str[start:end].decode('utf-8')
        else:
          _v3.format = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v3.data = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.remappings = []
        for i in range(0, length):
          val2 = rocon_std_msgs.msg.Remapping()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.remap_from = str[start:end].decode('utf-8')
          else:
            val2.remap_from = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.remap_to = str[start:end].decode('utf-8')
          else:
            val2.remap_to = str[start:end]
          val1.remappings.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.parameters = str[start:end].decode('utf-8')
        else:
          val1.parameters = str[start:end]
        start = end
        end += 4
        (val1.max,) = _struct_i.unpack(str[start:end])
        _v4 = val1.pairing
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v4.rapp = str[start:end].decode('utf-8')
        else:
          _v4.rapp = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v4.remappings = []
        for i in range(0, length):
          val3 = rocon_std_msgs.msg.Remapping()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.remap_from = str[start:end].decode('utf-8')
          else:
            val3.remap_from = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.remap_to = str[start:end].decode('utf-8')
          else:
            val3.remap_to = str[start:end]
          _v4.remappings.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v4.parameters = []
        for i in range(0, length):
          val3 = rocon_std_msgs.msg.KeyValue()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.key = str[start:end].decode('utf-8')
          else:
            val3.key = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.value = str[start:end].decode('utf-8')
          else:
            val3.value = str[start:end]
          _v4.parameters.append(val3)
        start = end
        end += 4
        (val1.hash,) = _struct_i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.role = str[start:end].decode('utf-8')
        else:
          val1.role = str[start:end]
        self.interactions.append(val1)
      start = end
      end += 1
      (self.load,) = _struct_B.unpack(str[start:end])
      self.load = bool(self.load)
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
      length = len(self.interactions)
      buff.write(_struct_I.pack(length))
      for val1 in self.interactions:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.compatibility
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.display_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.description
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.namespace
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v5 = val1.icon
        _x = _v5.resource_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v5.format
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = _v5.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.remappings)
        buff.write(_struct_I.pack(length))
        for val2 in val1.remappings:
          _x = val2.remap_from
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val2.remap_to
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.parameters
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_i.pack(val1.max))
        _v6 = val1.pairing
        _x = _v6.rapp
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(_v6.remappings)
        buff.write(_struct_I.pack(length))
        for val3 in _v6.remappings:
          _x = val3.remap_from
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val3.remap_to
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(_v6.parameters)
        buff.write(_struct_I.pack(length))
        for val3 in _v6.parameters:
          _x = val3.key
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
          _x = val3.value
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_struct_i.pack(val1.hash))
        _x = val1.role
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.load))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.interactions is None:
        self.interactions = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.interactions = []
      for i in range(0, length):
        val1 = rocon_interaction_msgs.msg.Interaction()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.compatibility = str[start:end].decode('utf-8')
        else:
          val1.compatibility = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.display_name = str[start:end].decode('utf-8')
        else:
          val1.display_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.description = str[start:end].decode('utf-8')
        else:
          val1.description = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.namespace = str[start:end].decode('utf-8')
        else:
          val1.namespace = str[start:end]
        _v7 = val1.icon
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.resource_name = str[start:end].decode('utf-8')
        else:
          _v7.resource_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.format = str[start:end].decode('utf-8')
        else:
          _v7.format = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v7.data = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.remappings = []
        for i in range(0, length):
          val2 = rocon_std_msgs.msg.Remapping()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.remap_from = str[start:end].decode('utf-8')
          else:
            val2.remap_from = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.remap_to = str[start:end].decode('utf-8')
          else:
            val2.remap_to = str[start:end]
          val1.remappings.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.parameters = str[start:end].decode('utf-8')
        else:
          val1.parameters = str[start:end]
        start = end
        end += 4
        (val1.max,) = _struct_i.unpack(str[start:end])
        _v8 = val1.pairing
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v8.rapp = str[start:end].decode('utf-8')
        else:
          _v8.rapp = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v8.remappings = []
        for i in range(0, length):
          val3 = rocon_std_msgs.msg.Remapping()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.remap_from = str[start:end].decode('utf-8')
          else:
            val3.remap_from = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.remap_to = str[start:end].decode('utf-8')
          else:
            val3.remap_to = str[start:end]
          _v8.remappings.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v8.parameters = []
        for i in range(0, length):
          val3 = rocon_std_msgs.msg.KeyValue()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.key = str[start:end].decode('utf-8')
          else:
            val3.key = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3.value = str[start:end].decode('utf-8')
          else:
            val3.value = str[start:end]
          _v8.parameters.append(val3)
        start = end
        end += 4
        (val1.hash,) = _struct_i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.role = str[start:end].decode('utf-8')
        else:
          val1.role = str[start:end]
        self.interactions.append(val1)
      start = end
      end += 1
      (self.load,) = _struct_B.unpack(str[start:end])
      self.load = bool(self.load)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i = struct.Struct("<i")
_struct_B = struct.Struct("<B")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rocon_interaction_msgs/SetInteractionsResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetInteractionsResponse(genpy.Message):
  _md5sum = "eb13ac1f1354ccecb7941ee8fa2192e8"
  _type = "rocon_interaction_msgs/SetInteractionsResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
bool result





"""
  __slots__ = ['result']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetInteractionsResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
    else:
      self.result = False

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
      buff.write(_struct_B.pack(self.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _struct_B.unpack(str[start:end])
      self.result = bool(self.result)
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
      buff.write(_struct_B.pack(self.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _struct_B.unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B = struct.Struct("<B")
class SetInteractions(object):
  _type          = 'rocon_interaction_msgs/SetInteractions'
  _md5sum = 'caa1e6b6a9707f4e18786c6cfde77aca'
  _request_class  = SetInteractionsRequest
  _response_class = SetInteractionsResponse
