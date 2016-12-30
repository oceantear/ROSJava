// Auto-generated. Do not edit!

// (in-package jimmy_srv.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class JimmyString {
  constructor() {
    this.PatrolCmd = '';
    this.orig_caller_id = '';
    this.data = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type JimmyString
    // Serialize message field [PatrolCmd]
    bufferInfo = _serializer.string(obj.PatrolCmd, bufferInfo);
    // Serialize message field [orig_caller_id]
    bufferInfo = _serializer.string(obj.orig_caller_id, bufferInfo);
    // Serialize message field [data]
    bufferInfo = _serializer.string(obj.data, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type JimmyString
    let tmp;
    let len;
    let data = new JimmyString();
    // Deserialize message field [PatrolCmd]
    tmp = _deserializer.string(buffer);
    data.PatrolCmd = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [orig_caller_id]
    tmp = _deserializer.string(buffer);
    data.orig_caller_id = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data]
    tmp = _deserializer.string(buffer);
    data.data = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'jimmy_srv/JimmyString';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb3f80be0569f2704f76fceeb9b36238';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Integration test message
    # caller_id of most recent node to send this message
    #string caller_id
    string PatrolCmd
    # caller_id of the original node to send this message
    string orig_caller_id
    string data
    
    `;
  }

};

module.exports = JimmyString;
