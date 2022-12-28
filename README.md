# Challenge Data Analyst Neural Work
Postulante: Ignacio Tapia  
Diciembre 2022

El repositorio se organiza de la siguiente forma:

```bash

challenge_neuralworks
├── README.md
├── data
│   └── database.sqlite
├── notebooks
│   ├── 01_SANDBOX_EDA.ipynb
│   ├── 02_SISTEMAS_DE_JUEGO.ipynb
│   ├── 03_CHALLENGE.ipynb
│   └── notebooks_output
├── queries
│   └── select
│       ├── historical_mean_overall_rating.sql
│       ├── matches.sql
│       └── players-attributes-season.sql
├── requirements.txt
└── utils
    ├── __init__.py
    ├── __pycache__
    │   ├── __init__.cpython-39.pyc
    │   ├── database.cpython-39.pyc
    │   └── general_functions.cpython-39.pyc
    ├── database.py
    └── general_functions.py


```

* ./data : directorio en dónde se almacenan los archivos de datos (.sqlite)
* ./notebooks : directorio donde se encuentran los archivos .ipynb para el análisis del caso
* ./queries : Para mantener sólo los aspectos analíticos dentro de los notebooks, se almacenan las queries para obtener los datos en un directorio aparte.
* ./requirements.txt : librerías necesarias para la correcta ejecución de los notebooks.
* ./utils : directorio para almacenar funciones personalizadas.


## Estructura de Notebooks
Se utilizaron dos notebooks con fines exclusivamente experimentales, esto son:
* 01_SANDBOX_EDA.ipynb
* 02_SISTEMAS_DE_JUEGO.ipynb

La utilización de estos notebooks perimitió motivar la intución sobre la base de datos y sus características. Luego, se utilizó un notebook exclusivamente para redactar lo hallazgos hilados por un story telling. Este notebook es:
* 03_CHALLENGE.ipynb