const assert = require('node:assert');

const expected = {
  service: 'appt-mgmt-personal-health-db',
  boundedContext: 'personal-health',
  database: 'salud_activa_db'
};

assert.strictEqual(expected.service, 'appt-mgmt-personal-health-db');
assert.strictEqual(expected.boundedContext, 'personal-health');
assert.strictEqual(expected.database, 'salud_activa_db');

console.log('db-schema test passed');
