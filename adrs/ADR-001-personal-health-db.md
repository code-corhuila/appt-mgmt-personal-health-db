# ADR-001: Use PostgreSQL for the Personal Health bounded context

- Status: Accepted
- Date: 2026-11-15

## Context
The Salud Activa platform manages user health profiles, medical records, appointments, and wellness data across multiple bounded contexts. The personal-health context requires a reliable relational store for core patient data, medical history, and structured health metadata.

## Decision
We will use PostgreSQL as the primary relational database for the personal-health bounded context.

## Consequences
- Structured data for patients, allergies, medications, and studies can be modeled clearly.
- Referential integrity helps preserve consistent relationships between entities.
- SQL-based reporting and auditing are easier to support.
- Integration with AWS RDS is straightforward for production deployments.

## Alternatives considered
- MongoDB: more flexible, but weaker for relational consistency and reporting.
- MySQL: viable, but PostgreSQL better fits the healthcare data model and future analytical needs.
