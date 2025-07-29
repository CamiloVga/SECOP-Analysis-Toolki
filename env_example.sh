# SECOP Analysis Toolkit - Environment Variables
# Developed by: Camilo Vega - AI Transformation Lead | AI/ML Engineer
# Copy this file to .env and fill in your API keys

# SOCRATA API (datos.gov.co) - RECOMMENDED
# Get free token at: https://www.datos.gov.co/profile/edit/developer_settings
SOCRATA_APP_TOKEN=your_socrata_token_here

# AI-powered investigation features (OPTIONAL)
# For automated web research and text analysis

# Tavily API for web search
# Get free API key at: https://tavily.com/
TAVILY_API_KEY=your_tavily_key_here

# OpenAI API for text analysis
# Get API key at: https://platform.openai.com/api-keys
OPENAI_API_KEY=your_openai_key_here

# Advanced scraping (OPTIONAL)
# Only needed for advanced web scraping features

# Proxy configuration (optional, for high-volume scraping)
PROXY_HOST=
PROXY_PORT=
PROXY_USER=
PROXY_PASS=

# Rate limiting configuration
MAX_REQUESTS_PER_MINUTE=30
DEFAULT_DELAY_SECONDS=2

# Cache and storage
CACHE_ENABLED=true
CACHE_DIR=./cache
EXPORT_DIR=./exports