docker-compose up --build
rmdir /s /q ".\public\fhir-old"
move .\public\fhir .\public\fhir-old
move .\output .\public\fhir
mkdir output
npx firebase deploy