package jimmy_srv;

public interface Composite extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "jimmy_srv/Composite";
  static final java.lang.String _DEFINITION = "# composite message. required for testing import calculation in generators\nCompositeA a\nCompositeB b\n";
  jimmy_srv.CompositeA getA();
  void setA(jimmy_srv.CompositeA value);
  jimmy_srv.CompositeB getB();
  void setB(jimmy_srv.CompositeB value);
}
