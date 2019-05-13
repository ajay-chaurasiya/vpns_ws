// Auto-generated. Do not edit!

// (in-package vps.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class pathDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.oldX = null;
      this.oldY = null;
      this.newX = null;
      this.newY = null;
      this.oldAngle = null;
      this.newAngle = null;
      this.destX = null;
      this.destY = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('oldX')) {
        this.oldX = initObj.oldX
      }
      else {
        this.oldX = 0;
      }
      if (initObj.hasOwnProperty('oldY')) {
        this.oldY = initObj.oldY
      }
      else {
        this.oldY = 0;
      }
      if (initObj.hasOwnProperty('newX')) {
        this.newX = initObj.newX
      }
      else {
        this.newX = 0;
      }
      if (initObj.hasOwnProperty('newY')) {
        this.newY = initObj.newY
      }
      else {
        this.newY = 0;
      }
      if (initObj.hasOwnProperty('oldAngle')) {
        this.oldAngle = initObj.oldAngle
      }
      else {
        this.oldAngle = 0;
      }
      if (initObj.hasOwnProperty('newAngle')) {
        this.newAngle = initObj.newAngle
      }
      else {
        this.newAngle = 0;
      }
      if (initObj.hasOwnProperty('destX')) {
        this.destX = initObj.destX
      }
      else {
        this.destX = 0;
      }
      if (initObj.hasOwnProperty('destY')) {
        this.destY = initObj.destY
      }
      else {
        this.destY = 0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pathDetails
    // Serialize message field [oldX]
    bufferOffset = _serializer.int32(obj.oldX, buffer, bufferOffset);
    // Serialize message field [oldY]
    bufferOffset = _serializer.int32(obj.oldY, buffer, bufferOffset);
    // Serialize message field [newX]
    bufferOffset = _serializer.int32(obj.newX, buffer, bufferOffset);
    // Serialize message field [newY]
    bufferOffset = _serializer.int32(obj.newY, buffer, bufferOffset);
    // Serialize message field [oldAngle]
    bufferOffset = _serializer.int32(obj.oldAngle, buffer, bufferOffset);
    // Serialize message field [newAngle]
    bufferOffset = _serializer.int32(obj.newAngle, buffer, bufferOffset);
    // Serialize message field [destX]
    bufferOffset = _serializer.int32(obj.destX, buffer, bufferOffset);
    // Serialize message field [destY]
    bufferOffset = _serializer.int32(obj.destY, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pathDetails
    let len;
    let data = new pathDetails(null);
    // Deserialize message field [oldX]
    data.oldX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [oldY]
    data.oldY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [newX]
    data.newX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [newY]
    data.newY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [oldAngle]
    data.oldAngle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [newAngle]
    data.newAngle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [destX]
    data.destX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [destY]
    data.destY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vps/pathDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88795057299c09e1b94f01119118c950';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 oldX
    int32 oldY
    int32 newX
    int32 newY
    int32 oldAngle
    int32 newAngle
    int32 destX
    int32 destY
    string text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pathDetails(null);
    if (msg.oldX !== undefined) {
      resolved.oldX = msg.oldX;
    }
    else {
      resolved.oldX = 0
    }

    if (msg.oldY !== undefined) {
      resolved.oldY = msg.oldY;
    }
    else {
      resolved.oldY = 0
    }

    if (msg.newX !== undefined) {
      resolved.newX = msg.newX;
    }
    else {
      resolved.newX = 0
    }

    if (msg.newY !== undefined) {
      resolved.newY = msg.newY;
    }
    else {
      resolved.newY = 0
    }

    if (msg.oldAngle !== undefined) {
      resolved.oldAngle = msg.oldAngle;
    }
    else {
      resolved.oldAngle = 0
    }

    if (msg.newAngle !== undefined) {
      resolved.newAngle = msg.newAngle;
    }
    else {
      resolved.newAngle = 0
    }

    if (msg.destX !== undefined) {
      resolved.destX = msg.destX;
    }
    else {
      resolved.destX = 0
    }

    if (msg.destY !== undefined) {
      resolved.destY = msg.destY;
    }
    else {
      resolved.destY = 0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

module.exports = pathDetails;
