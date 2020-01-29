class Memory{


  static const operadores  = ['-','+','/','*', '*', '=', '%'];

  final _buffer = [0.0,0.0];
  int  _bufferIndex = 0;
  String operation;
  String _value = '0';
  bool wipe = false;


  void applyCommand(String command){

    if(command == 'C'){
      allclear();
    }
    else if(operadores.contains(command)){
      setOperation(command);
    }
    else{
      addDigit(command);
    }

  }

  setOperation(String newOperation){
    this.wipe = true;
    print(this.operation);
    print(this._buffer);
  
    if(this._bufferIndex == 0){
      this._bufferIndex = 1;
    }
    else{
      this._buffer[0] = calculate();
      this._value = this._buffer[0].toString(); 
      this._buffer[1] = 0;
    }

    if(newOperation != '=')
      this.operation = newOperation;

  }

  addDigit(String newDigit){
    
    final currentValue = (wipe || this._value == '0') ? '' : _value;
    if(this._value.contains('.') && newDigit == '.' && !this.wipe){return;}
    this._value = currentValue +  newDigit;
    this._value = this._value == '.' ? '0.':this._value;
    wipe = false;

    this._buffer[this._bufferIndex] = double.tryParse(this._value) ?? 0;
    print(this._buffer);
  }

  allclear(){
    this._bufferIndex = 0;
    this._buffer[0] = 0;
    this._buffer[1] = 0;
    this._value = '0';
  }

  double calculate(){

    switch (this.operation) {
      case '+': return this._buffer[0] + this._buffer[1];
      case '-': return this._buffer[0] - this._buffer[1];
      case '/': return this._buffer[0] / this._buffer[1];
      case '*': return this._buffer[0] * this._buffer[1];
      case '%': return this._buffer[0] % this._buffer[1];
      default : return this._buffer[0] ;
    }
  }

  String get(){
    return this._value;
  }

}