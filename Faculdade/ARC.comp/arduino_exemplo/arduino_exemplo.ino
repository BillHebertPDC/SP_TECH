int pinoSensor = 0;
int valorLido = 0;
float temperatura = 0;
int linha = 0;

  // put your setup code here, to run once:
void setup() {
  Serial.begin(9600);
  Serial.println("CLEARDATA");
  Serial.println("LABEL, HORA, temperatura, linha");
}

void loop() {
  valorLido = analogRead(pinoSensor);
  temperatura = (valorLido * 0.00488);
  temperatura = temperatura * 100;
  linha++;

  Serial.print("DATA, TIME, ");
  Serial.print(temperatura);
  Serial.print(", ");
  Serial.println(linha);

  if(linha > 100)
  {
    linha = 0;
    Serial.println("ROW, SET, 2");
  }
  delay(1000);
  // put your main code here, to run repeatedly:
}
