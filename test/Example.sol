contract Example {
  uint public value;
  bool public fallbackTriggered;
  event ExampleEvent(address indexed _from, uint num);

  function Example(uint val) {
    value = val;
    fallbackTriggered = false;
  }

  function setValue(uint val) {
    value = val;
  }

  function getValue() constant returns(uint) {
    return value;
  }

  function parrot(uint val) returns(uint) {
    return val;
  }

  function triggerEvent() {
    ExampleEvent(msg.sender, 8);
  }

  function send() {
    if (value > 0) {
        value--;
    }
  }

  function send(uint _value) {
    if (value >= _value) {
        value-= _value;
    }
  }

  function() payable {
    fallbackTriggered = true;
  }
}
