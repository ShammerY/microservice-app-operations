# microservice-app-operations

## Contexto del Proyecto

El presente informe describe el desarrollo de una aplicación basada en microservicios, con un tiempo de ejecución estimado de **cuatro meses**. El proyecto se encuentra estructurado en **dos repositorios independientes**: uno destinado al **desarrollo de la aplicación** y otro enfocado exclusivamente en las **operaciones y la automatización de infraestructura**.

El trabajo es llevado a cabo por dos equipos especializados:

* El **equipo de desarrollo**, conformado por seis integrantes, responsable de la construcción de funcionalidades y servicios.
* El **equipo de operaciones**, integrado por dos miembros, encargado de la gestión de la infraestructura, el despliegue y los procesos de automatización.

Para la gestión del proyecto se adoptó la metodología ágil **Scrum**, apoyada en la herramienta **Trello** para la planificación de sprints, la asignación de tareas y el seguimiento del progreso. Este enfoque permite mantener un ritmo de trabajo iterativo e incremental, con entregas continuas y mayor visibilidad del avance.

En relación con el control de versiones, se definió como estándar la estrategia de branching **GitHub Flow**, tanto para el repositorio de desarrollo como para el de operaciones. Esta decisión facilita la colaboración entre equipos, simplifica la integración de cambios y favorece la entrega continua.

Desde la perspectiva arquitectónica, se han incorporado los patrones de diseño **Cache-Aside** y **Circuit Breaker**, con el fin de optimizar el rendimiento en el acceso a datos y dotar de mayor resiliencia a los servicios frente a fallos o latencias prolongadas.

Finalmente, se estableció la implementación de **pipelines de integración y despliegue continuo**, desarrollados mediante **scripts en Bash** y gestionados a través de **Jenkins**. Esta solución asegura la estandarización de procesos, la reducción de tareas manuales y la mejora en la calidad y confiabilidad de las entregas, tanto en el ámbito del desarrollo como en el de la infraestructura.

En conjunto, estas decisiones técnicas y organizacionales permiten consolidar un flujo de trabajo ágil y automatizado, alineado con las prácticas de **DevOps**, que integra de manera efectiva los esfuerzos de desarrollo y operaciones dentro del ciclo de vida del proyecto.
