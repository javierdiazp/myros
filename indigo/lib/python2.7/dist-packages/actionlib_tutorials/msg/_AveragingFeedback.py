# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from actionlib_tutorials/AveragingFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AveragingFeedback(genpy.Message):
  _md5sum = "9e8dfc53c2f2a032ca33fa80ec46fd4f"
  _type = "actionlib_tutorials/AveragingFeedback"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
int32 sample
float32 data
float32 mean
float32 std_dev

"""
  __slots__ = ['sample','data','mean','std_dev']
  _slot_types = ['int32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sample,data,mean,std_dev

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AveragingFeedback, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.sample is None:
        self.sample = 0
      if self.data is None:
        self.data = 0.
      if self.mean is None:
        self.mean = 0.
      if self.std_dev is None:
        self.std_dev = 0.
    else:
      self.sample = 0
      self.data = 0.
      self.mean = 0.
      self.std_dev = 0.

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
      _x = self
      buff.write(_struct_i3f.pack(_x.sample, _x.data, _x.mean, _x.std_dev))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.sample, _x.data, _x.mean, _x.std_dev,) = _struct_i3f.unpack(str[start:end])
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
      _x = self
      buff.write(_struct_i3f.pack(_x.sample, _x.data, _x.mean, _x.std_dev))
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
      _x = self
      start = end
      end += 16
      (_x.sample, _x.data, _x.mean, _x.std_dev,) = _struct_i3f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i3f = struct.Struct("<i3f")
