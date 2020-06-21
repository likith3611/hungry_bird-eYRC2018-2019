// Auto-generated. Do not edit!

// (in-package pluto_camera_sense.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frameBuffer = null;
      this.frameSize = null;
      this.iframe = null;
    }
    else {
      if (initObj.hasOwnProperty('frameBuffer')) {
        this.frameBuffer = initObj.frameBuffer
      }
      else {
        this.frameBuffer = [];
      }
      if (initObj.hasOwnProperty('frameSize')) {
        this.frameSize = initObj.frameSize
      }
      else {
        this.frameSize = 0;
      }
      if (initObj.hasOwnProperty('iframe')) {
        this.iframe = initObj.iframe
      }
      else {
        this.iframe = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type frame
    // Serialize message field [frameBuffer]
    bufferOffset = _arraySerializer.uint8(obj.frameBuffer, buffer, bufferOffset, null);
    // Serialize message field [frameSize]
    bufferOffset = _serializer.uint32(obj.frameSize, buffer, bufferOffset);
    // Serialize message field [iframe]
    bufferOffset = _serializer.bool(obj.iframe, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type frame
    let len;
    let data = new frame(null);
    // Deserialize message field [frameBuffer]
    data.frameBuffer = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [frameSize]
    data.frameSize = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [iframe]
    data.iframe = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.frameBuffer.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pluto_camera_sense/frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a745da853457763b31d9f94e2f97135';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] frameBuffer
    uint32 frameSize
    bool iframe
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new frame(null);
    if (msg.frameBuffer !== undefined) {
      resolved.frameBuffer = msg.frameBuffer;
    }
    else {
      resolved.frameBuffer = []
    }

    if (msg.frameSize !== undefined) {
      resolved.frameSize = msg.frameSize;
    }
    else {
      resolved.frameSize = 0
    }

    if (msg.iframe !== undefined) {
      resolved.iframe = msg.iframe;
    }
    else {
      resolved.iframe = false
    }

    return resolved;
    }
};

module.exports = frame;
