import generateString, {countOf} from './string_generator.js';
import assert from 'assert';

assert(generateString('v') === 'v1');
assert(generateString('v') === 'v2');
assert(generateString('f') === 'f1');
assert(generateString('v') === 'v3');
assert(countOf('v') === 3)
