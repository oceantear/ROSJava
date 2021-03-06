package yocs_msgs;

public interface NavigateToFeedback extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "yocs_msgs/NavigateToFeedback";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n# Feedback\nstring  message\nfloat32 distance\nfloat32 remain_time\nint8    status\n\nint8 STATUS_RETRY       = 21\nint8 STATUS_INPROGRESS  = 22\nint8 STATUS_ERROR       = 23\n\n";
  static final byte STATUS_RETRY = 21;
  static final byte STATUS_INPROGRESS = 22;
  static final byte STATUS_ERROR = 23;
  java.lang.String getMessage();
  void setMessage(java.lang.String value);
  float getDistance();
  void setDistance(float value);
  float getRemainTime();
  void setRemainTime(float value);
  byte getStatus();
  void setStatus(byte value);
}
