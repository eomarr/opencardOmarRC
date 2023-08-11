Configuracion inicial:
-Java version "11.0.16.1"
-Gradle 6.2.2

Dependencias:
- Serenity screenplay 3.8.1

Plugins:
-Cucumber for Java
-Gherkin

Pasos para la ejecucion:
1 abrir el gradle que viene por defecto en el intellij lado derecho
2 seleccionar el terminal
3 ingresar el siguiente comando + enter
  gradle clean test -Denvironment=default -Dcucumber.filter.tags="@Compra"

-Finalizada la ejecucion el reporte se genera en la ruta:
target/site/serenity/index.html