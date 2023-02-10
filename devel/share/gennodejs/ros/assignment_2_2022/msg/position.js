// Auto-generated. Do not edit!

// (in-package assignment_2_2022.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_pos = null;
      this.y_pos = null;
      this.x_velocity_val = null;
      this.y_velocity_val = null;
    }
    else {
      if (initObj.hasOwnProperty('x_pos')) {
        this.x_pos = initObj.x_pos
      }
      else {
        this.x_pos = 0.0;
      }
      if (initObj.hasOwnProperty('y_pos')) {
        this.y_pos = initObj.y_pos
      }
      else {
        this.y_pos = 0.0;
      }
      if (initObj.hasOwnProperty('x_velocity_val')) {
        this.x_velocity_val = initObj.x_velocity_val
      }
      else {
        this.x_velocity_val = 0.0;
      }
      if (initObj.hasOwnProperty('y_velocity_val')) {
        this.y_velocity_val = initObj.y_velocity_val
      }
      else {
        this.y_velocity_val = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type position
    // Serialize message field [x_pos]
    bufferOffset = _serializer.float32(obj.x_pos, buffer, bufferOffset);
    // Serialize message field [y_pos]
    bufferOffset = _serializer.float32(obj.y_pos, buffer, bufferOffset);
    // Serialize message field [x_velocity_val]
    bufferOffset = _serializer.float32(obj.x_velocity_val, buffer, bufferOffset);
    // Serialize message field [y_velocity_val]
    bufferOffset = _serializer.float32(obj.y_velocity_val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type position
    let len;
    let data = new position(null);
    // Deserialize message field [x_pos]
    data.x_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_pos]
    data.y_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_velocity_val]
    data.x_velocity_val = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_velocity_val]
    data.y_velocity_val = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2022/position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51353523648c2b26e75c869e3b7fb600';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x_pos
    float32 y_pos
    float32 x_velocity_val
    float32 y_velocity_val
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new position(null);
    if (msg.x_pos !== undefined) {
      resolved.x_pos = msg.x_pos;
    }
    else {
      resolved.x_pos = 0.0
    }

    if (msg.y_pos !== undefined) {
      resolved.y_pos = msg.y_pos;
    }
    else {
      resolved.y_pos = 0.0
    }

    if (msg.x_velocity_val !== undefined) {
      resolved.x_velocity_val = msg.x_velocity_val;
    }
    else {
      resolved.x_velocity_val = 0.0
    }

    if (msg.y_velocity_val !== undefined) {
      resolved.y_velocity_val = msg.y_velocity_val;
    }
    else {
      resolved.y_velocity_val = 0.0
    }

    return resolved;
    }
};

module.exports = position;
