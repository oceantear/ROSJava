package jimmy_srv;

public interface AddTwoIntsResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "jimmy_srv/AddTwoIntsResponse";
  static final java.lang.String _DEFINITION = "int64 sum";
  long getSum();
  void setSum(long value);
}
