# 🤝 Contributing to SECOP Analysis Toolkit

**Developed by:** [Camilo Vega](https://www.linkedin.com/in/camilo-vega-169084b1/)  
*AI Transformation Lead | AI/ML Engineer | Professor and AI Consultant*

Thank you for your interest in contributing to the SECOP Analysis Toolkit! This project aims to democratize access to advanced tools for government transparency and anti-corruption efforts.

---

## 🌟 How to Contribute

### 1. Types of Contributions

We welcome several types of contributions:

#### 🐛 **Bug Reports**
- Clear description of the issue
- Steps to reproduce
- Expected vs actual behavior
- Environment details (Python version, OS, etc.)

#### 💡 **Feature Requests**
- Description of the proposed feature
- Use case explanation
- Potential implementation approach
- Impact assessment

#### 🔧 **Code Contributions**
- Bug fixes
- New features
- Performance improvements
- Documentation improvements

#### 📚 **Documentation**
- API documentation improvements
- Tutorial creation
- Use case examples
- Translation efforts

#### 🧪 **Testing**
- Unit tests
- Integration tests
- Performance benchmarks
- Edge case validation

---

## 🚀 Getting Started

### 1. Fork and Clone

```bash
# Fork the repository on GitHub
# Then clone your fork
git clone https://github.com/your-username/secop-analysis-toolkit.git
cd secop-analysis-toolkit
```

### 2. Set Up Development Environment

```bash
# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
pip install -r requirements-dev.txt  # Development dependencies

# Install pre-commit hooks
pre-commit install
```

### 3. Create Feature Branch

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b bugfix/issue-description
```

---

## 📝 Development Guidelines

### Code Style

We follow Python PEP 8 with some specific guidelines:

```python
# Use descriptive variable names
contracts_data = buscar_contratos(...)  # Good
df = buscar_contratos(...)              # Avoid

# Document functions clearly
def investigate_contractor(document_id: str) -> dict:
    """
    Investigates a contractor using document ID.
    
    Args:
        document_id (str): Contractor's