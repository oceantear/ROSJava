package rocon_std_msgs;

public interface StringsPairRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rocon_std_msgs/StringsPairRequest";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM A SERVICE PAIR DEFINITION ======\n\nuuid_msgs/UniqueID id\nStringsRequest request\n";
  uuid_msgs.UniqueID getId();
  void setId(uuid_msgs.UniqueID value);
  rocon_std_msgs.StringsRequest getRequest();
  void setRequest(rocon_std_msgs.StringsRequest value);
}