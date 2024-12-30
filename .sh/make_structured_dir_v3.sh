#!/bin/bash

BASE_DIR="/home/caterpillarbyte/Desktop/ecole-concise"

# Create array of sub-directories with metadata
declare -A SUB_DIRECTORIES=(
    # Technical Documentation - Additional sub-directories
    ["technical/languages/java/syntax"]="Java Language Syntax"
    ["technical/languages/java/features"]="Java Language Features"
    ["technical/languages/python/basics"]="Python Fundamentals"
    ["technical/languages/javascript/modern"]="Modern JavaScript Features"
    
    ["technical/frameworks/spring/boot"]="Spring Boot Setup & Config"
    ["technical/frameworks/spring/security"]="Spring Security Implementation"
    ["technical/frameworks/react/hooks"]="React Hooks Patterns"
    ["technical/frameworks/react/state"]="State Management"
    ["technical/frameworks/django/orm"]="Django ORM Usage"
    
    ["technical/infrastructure/aws/ec2"]="AWS EC2 Configuration"
    ["technical/infrastructure/aws/s3"]="AWS S3 Usage"
    ["technical/infrastructure/docker/compose"]="Docker Compose Setup"
    ["technical/infrastructure/kubernetes/deployment"]="K8s Deployment Guide"
    
    ["technical/database/sql/optimization"]="SQL Query Optimization"
    ["technical/database/sql/schema"]="Database Schema Design"
    ["technical/database/nosql/mongodb"]="MongoDB Usage Guide"

    # Project Documentation - Additional sub-directories
    ["projects/backend/api"]="API Documentation"
    ["projects/backend/service"]="Service Layer Design"
    ["projects/frontend/components"]="UI Components"
    ["projects/frontend/state"]="State Management"
    ["projects/mobile/native"]="Native Features"
    ["projects/architecture/system"]="System Architecture"
    
    # Learning Documentation - Additional sub-directories
    ["learning/courses/current/fourtwo/piscine/shell-00"]="Current Course Notes"
    ["learning/courses/completed"]="Completed Course Notes"
    ["learning/books/technical"]="Technical Book Notes"
    ["learning/books/theory"]="CS Theory Books"
    ["learning/tutorials/hands-on"]="Practical Tutorials"
    ["learning/research/trends"]="Tech Trends Research"
)

# Create sub-directories and their README files
for dir in "${!SUB_DIRECTORIES[@]}"; do
    # Create directory
    mkdir -p "$BASE_DIR/$dir"
    
    # Create README with metadata
    cat > "$BASE_DIR/$dir/README.md" << EOF
# ${SUB_DIRECTORIES[$dir]}
Created: $(date "+%Y-%m-%d")
Purpose: ${SUB_DIRECTORIES[$dir]}

## Contents
- Place your documents here
- Add relevant files and folders
EOF
    
    echo "Created sub-directory: $dir with README"
done

echo "✅ Additional sub-directories created successfully!"
tree "$BASE_DIR"
