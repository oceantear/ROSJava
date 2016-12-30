package jimmy_srv;

public interface JimmyString extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "jimmy_srv/JimmyString";
  static final java.lang.String _DEFINITION = "# Integration test message\n# caller_id of most recent node to send this message\n#string caller_id\nstring PatrolCmd\n# caller_id of the original node to send this message\nstring orig_caller_id\nstring data\n";
  java.lang.String getPatrolCmd();
  void setPatrolCmd(java.lang.String value);
  java.lang.String getOrigCallerId();
  void setOrigCallerId(java.lang.String value);
  java.lang.String getData();
  void setData(java.lang.String value);
}
