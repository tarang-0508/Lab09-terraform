# 📘 CST8918 - Lab A09: Husky and GitHub Actions for Terraform

This project demonstrates the use of **Husky** pre-commit hooks and **GitHub Actions** workflows to enforce Terraform code quality in a CI/CD pipeline.  
It is part of the coursework for **CST8918 - DevOps: Infrastructure as Code**.

---



## ⚙️ Husky Pre-commit Hook

**Husky** ensures the following before a commit is made:

- `terraform fmt -check -recursive` verifies Terraform formatting
- `terraform validate` checks for syntax and configuration validity
- `tflint` lints Terraform code for best practices

### 🛠️ Setup Commands:

```bash
npm init -y
npm install husky --save-dev
npx husky-init
npx husky add .husky/pre-commit "terraform fmt -check -recursive"
echo "terraform validate" >> .husky/pre-commit
echo "tflint" >> .husky/pre-commit
