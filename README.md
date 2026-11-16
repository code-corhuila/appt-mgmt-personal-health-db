# appt-mgmt-personal-health-db

> Personal Health bounded context: database schema, seeds, migrations and infrastructure for Salud Activa.

This repository contains the database layer for the **personal-health** context of the **Salud Activa** platform. It manages structured patient information, medical history, allergies, medications, and core health records used by the appointment management ecosystem.

## Project purpose

The system centralizes access to the health data required by the patient and medical staff. The bounded context keeps ownership of the relevant data model and provides the persistence layer for:

- patient profiles,
- medical records,
- allergies and risk factors,
- medication information,
- offline-safe health metadata,
- future integrations with the appointment and identity domains.

## Repository structure

```text
appt-mgmt-personal-health-db/
├── .github/
│   └── CODEOWNERS
├── adrs/
│   └── ADR-001-personal-health-db.md
├── db/
│   └── init/
│       └── 001_schema.sql
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── tests/
│   └── db-schema.test.js
├── .env.example
├── .gitignore
├── docker-compose.yml
├── package.json
├── README.md
└── LICENSE
```

## Tech stack

- PostgreSQL as the relational persistence layer
- Docker Compose for local development
- Terraform for cloud provisioning on AWS
- Node.js test harness for schema validation

## Local setup

1. Copy the environment variables:
   ```bash
   cp .env.example .env
   ```
2. Start the database:
   ```bash
   docker compose up -d postgres
   ```
3. Run the schema validation test:
   ```bash
   npm test
   ```

## Environment variables

- `POSTGRES_DB`
- `POSTGRES_USER`
- `POSTGRES_PASSWORD`
- `POSTGRES_PORT`
- `APP_ENV`
- `JWT_SECRET`

## Branching policy

Three permanent branches. **None of them accepts a direct commit** — you enter through a child
branch and leave through a Pull Request.

```
develop  <--PR--  feat/... fix/... chore/...
qa       <--PR--  qa/...
main     <--PR--  release/...  hotfix/...
```

Promotion happens **by re-application** (`git cherry-pick -x`), never by merging one permanent
branch into another: `merge develop -> qa` and `merge qa -> main` do not exist in this model.

`main` requires **1 approval from `ariel5253`**. On `develop` and `qa` the team sets its own review
rule.

Full policy: `00-governance/branching-policy.md` in `library-docs`.
