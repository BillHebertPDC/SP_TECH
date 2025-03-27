#include "DHT.h"  //importando a biblioteca
#define TIPO_SENSOR DHT11
const int PINO_SENSOR_DHT11 = A0;  // definindo a porta de captura - variavel do tipo inteiro
const int max = -18;               // limite max temperatura
const int min = -25;               // limite min temperatura
const int max_u = 100;             // limite max umidade
const int min_u = 85;              // limite min umidade

DHT sensorDHT(PINO_SENSOR_DHT11, TIPO_SENSOR);  // chama a função da biblioteca
void setup()                                    // função de inicialização basica
{
  Serial.begin(9600);  // definir a quantidade de dados da usb
  sensorDHT.begin();   // iniciar sensor
}
void loop()  // função de repetição - será executado infinitamente apos iniciada
{
  float umidade = sensorDHT.readHumidity() + 40;         // variavel do tipo float e onde será armazenado o dado de umidade
  float temperatura = sensorDHT.readTemperature() - 48;  // variavel do tipo float e onde será armazenado o dado de temperatura
  if (isnan(temperatura) || isnan(umidade))              // verifica se as variaveis tem dado, caso alguma delas não tenha exibir uma mensagem de erro
  {
    Serial.println("ERRO ao ler os dados do sensor");  // mensagem de erro
  } else {
    Serial.print("temperatura:");  // label temperatura
    Serial.print(temperatura);     // exibe o dado de temperatura
    Serial.print(",");             // separa para a proxima label

    Serial.print("Max_Temperatura:");  // label max temperatura
    Serial.print(max);                 // exibe o dado fixo max de temperatura para determinar limite
    Serial.print(",");                 // separa para a proxima label

    Serial.print("Min_Temperatura:");  // label max temperatura
    Serial.print(min);                 // exibe o dado fixo min de temperatura para determinar limite
    Serial.print(",");                 // separa para a proxima label

    Serial.print("umidade:");  //  label umidade
    Serial.print(umidade);     // exibe o dado de umidade
    Serial.print(",");         // separa para a proxima label

    Serial.print("Max_umidade:");  //  label max umidade
    Serial.print(max_u);           // exibe o dado fixo max de umidade para determinar limite
    Serial.print(",");             // separa para a proxima label

    Serial.print("Min_umidade:");  //  label min umidade
    Serial.println(min_u);         // exibe o dado fixo min de umidade para determinar limite
  }
  delay(100);  // espera 1 segundo para finalizar
}