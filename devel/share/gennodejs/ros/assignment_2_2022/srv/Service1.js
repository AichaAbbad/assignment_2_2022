// Auto-generated. Do not edit!

// (in-package assignment_2_2022.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Service1Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.call = null;
    }
    else {
      if (initObj.hasOwnProperty('call')) {
        this.call = initObj.call
      }
      else {
        this.call = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Service1Request
    // Serialize message field [call]
    bufferOffset = _serializer.int16(obj.call, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Service1Request
    let len;
    let data = new Service1Request(null);
    // Deserialize message field [call]
    data.call = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/Service1Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '336b9dddfa0a2e29c717dc025c1aa0e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 call
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Service1Request(null);
    if (msg.call !== undefined) {
      resolved.call = msg.call;
    }
    else {
      resolved.call = 0
    }

    return resolved;
    }
};

class Service1Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reached = null;
      this.cancelled = null;
    }
    else {
      if (initObj.hasOwnProperty('reached')) {
        this.reached = initObj.reached
      }
      else {
        this.reached = 0;
      }
      if (initObj.hasOwnProperty('cancelled')) {
        this.cancelled = initObj.cancelled
      }
      else {
        this.cancelled = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Service1Response
    // Serialize message field [reached]
    bufferOffset = _serializer.int16(obj.reached, buffer, bufferOffset);
    // Serialize message field [cancelled]
    bufferOffset = _serializer.int16(obj.cancelled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Service1Response
    let len;
    let data = new Service1Response(null);
    // Deserialize message field [reached]
    data.reached = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cancelled]
    data.cancelled = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/Service1Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '170ecbbc56b99fe8018af4ec688fb239';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 reached
    int16 cancelled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Service1Response(null);
    if (msg.reached !== undefined) {
      resolved.reached = msg.reached;
    }
    else {
      resolved.reached = 0
    }

    if (msg.cancelled !== undefined) {
      resolved.cancelled = msg.cancelled;
    }
    else {
      resolved.cancelled = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: Service1Request,
  Response: Service1Response,
  md5sum() { return 'e5d53304d667c7bb1c841768acfb5d86'; },
  datatype() { return 'assignment_2_2022/Service1'; }
};
