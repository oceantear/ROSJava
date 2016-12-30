package william_srv;

public interface Composite extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "william_srv/Composite";
  static final java.lang.String _DEFINITION = "# composite message. required for testing import calculation in generators\nCompositeA a\nCompositeB b\n";
  william_srv.CompositeA getA();
  void setA(william_srv.CompositeA value);
  william_srv.CompositeB getB();
  void setB(william_srv.CompositeB value);
}
