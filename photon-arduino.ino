
int analogValue = 0;    // Hold A0 value = 0-4095
int incomingByte = 0;   // for incoming serial data

void setup()
{
    Serial.begin(9600);    // normal rate
  // Serial.begin(115200);  //ATmega
}

void loop() {
  
   analogValue = analogRead(A0);  // pin A0
   Serial.println(analogValue);      
  
  if (Serial.available() > 0) { // read the incoming byte:
   
     incomingByte = Serial.read();
     Serial.println(incomingByte, DEC);
     if (incomingByte == 97){  // ascii code for small letter 'a'
             Serial.println("Wow"); 
     }
  } 
  
  delay(2000);
}
