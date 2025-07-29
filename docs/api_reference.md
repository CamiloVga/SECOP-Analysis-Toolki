# 📚 API Reference - SECOP Analysis Toolkit

**Developed by:** [Camilo Vega](https://www.linkedin.com/in/camilo-vega-169084b1/)  
*AI Transformation Lead | AI/ML Engineer | Professor and AI Consultant*

This document provides comprehensive documentation for all functions and classes in the SECOP Analysis Toolkit.

---

## 🔍 Core Functions (`secop_api.py`)

### `buscar_contratos(**filtros)`

Main function to search and extract SECOP contracts with customizable filters.

**Parameters:**
- `limite` (int, default=100): Maximum number of contracts to retrieve
- `departamento` (str): Filter by department name
- `municipio` (str): Filter by municipality name
- `nombre_entidad` (str): Filter by entity name
- `objeto_a_contratar` (str): Filter by contract object (supports partial matching)
- `valor_minimo` (int): Minimum contract value filter
- `valor_maximo` (int): Maximum contract value filter
- `fecha_firma_desde` (str): Start date filter (YYYY-MM-DD format)
- `fecha_firma_hasta` (str): End date filter (YYYY-MM-DD format)
- `estado_proceso` (str): Filter by process status
- `modalidad` (str): Filter by contracting modality

**Returns:**
- `pandas.DataFrame`: DataFrame with filtered contracts

**Example:**
```python
# Search infrastructure contracts over 100M in Antioquia
contracts = buscar_contratos(
    limite=500,
    departamento="Antioquia",
    objeto_a_contratar="infrastructure",
    valor_minimo=100000000,
    fecha_firma_desde="2024-01-01"
)
```

---

### `resumen_busqueda(df)`

Displays a comprehensive summary of search results.

**Parameters:**
- `df` (pandas.DataFrame): DataFrame returned by `buscar_contratos()`

**Returns:**
- `None`: Prints summary statistics to console

**Output includes:**
- Total number of contracts found
- Available columns
- Data quality metrics
- Contract object analysis

**Example:**
```python
df = buscar_contratos(limite=100, departamento="Bogotá D.C.")
resumen_busqueda(df)
```

---

### `exportar_excel(df, prefijo="secop")`

Exports DataFrame to Excel file with timestamp.

**Parameters:**
- `df` (pandas.DataFrame): DataFrame to export
- `prefijo` (str, default="secop"): Filename prefix

**Returns:**
- `str`: Filename of exported file, or `None` if error

**Example:**
```python
contracts = buscar_contratos(limite=100)
filename = exportar_excel(contracts, "bogota_analysis")
# Creates file: bogota_analysis_20241201_143022.xlsx
```

---

### `mostrar_columnas_disponibles()`

Shows all available columns in SECOP dataset.

**Parameters:**
- None

**Returns:**
- `list`: List of column names

**Example:**
```python
columns = mostrar_columnas_disponibles()
print(f"Available columns: {len(columns)}")
```

---

## 🧠 AI Investigation Functions (`secop_ia.py`)

### `ejecutar_investigacion_automatica()`

Automatically investigates top contractors from current dataset.

**Prerequisites:**
- Must run `buscar_contratos()` first to populate dataset
- Requires API keys for web research (TAVILY_KEY, OPENAI_API_KEY)

**Returns:**
- `None`: Prints investigation reports to console

**Features:**
- Identifies top contractors by frequency and value
- Performs web research on each contractor
- Generates structured investigation reports
- Extracts business networks and connections

**Example:**
```python
# First, search contracts
df = buscar_contratos(limite=1000, departamento="La Guajira")

# Then investigate top contractors
ejecutar_investigacion_automatica()
```

---

### `investigar_contratista_por_documento(documento_proveedor)`

Investigates a specific contractor by their document number.

**Parameters:**
- `documento_proveedor` (str): Contractor's document/NIT number

**Returns:**
- `str`: Detailed investigation report

**Investigation includes:**
- Company information and variations
- Web presence analysis
- Related people and entities
- Risk assessment
- Contract patterns

**Example:**
```python
report = investigar_contratista_por_documento("900123456")
print(report)
```

---

### `preparar_investigacion_web(num_top=3)`

Prepares data for web investigation by identifying top contractors.

**Parameters:**
- `num_top` (int, default=3): Number of top contractors to prepare

**Returns:**
- `list`: List of contractor information dictionaries

**Example:**
```python
top_contractors = preparar_investigacion_web(5)
for contractor in top_contractors:
    print(f"Contractor: {contractor['nombre_principal']}")
    print(f"Contracts: {contractor['num_contratos']}")
```

---

## 📊 Analysis Functions

### `analizar_patrones_contratos(df)`

Analyzes patterns in contract data.

**Parameters:**
- `df` (pandas.DataFrame): Contracts dataset

**Returns:**
- `dict`: Analysis results including:
  - Top contractors by frequency
  - Data quality metrics
  - Value statistics
  - Entity analysis

**Example:**
```python
contracts = buscar_contratos(limite=1000)
patterns = analizar_patrones_contratos(contracts)
```

---

### `detectar_contratistas_frecuentes(df, min_contratos=5)`

Detects frequent contractors with potential anomalies.

**Parameters:**
- `df` (pandas.DataFrame): Contracts dataset
- `min_contratos` (int, default=5): Minimum contracts to be considered frequent

**Returns:**
- `pandas.DataFrame`: Frequent contractors with analysis

**Example:**
```python
frequent = detectar_contratistas_frecuentes(df, min_contratos=10)
```

---

## 🔧 Utility Functions

### `optimizar_tipos_datos(df)`

Optimizes DataFrame data types for memory efficiency.

**Parameters:**
- `df` (pandas.DataFrame): DataFrame to optimize

**Returns:**
- `pandas.DataFrame`: Optimized DataFrame

**Example:**
```python
contracts = buscar_contratos(limite=10000)
optimized = optimizar_tipos_datos(contracts)
```

---

### `limpiar_nombres_entidades(df)`

Standardizes entity names for better analysis.

**Parameters:**
- `df` (pandas.DataFrame): DataFrame with entity names

**Returns:**
- `pandas.DataFrame`: DataFrame with standardized names

**Example:**
```python
cleaned = limpiar_nombres_entidades(contracts)