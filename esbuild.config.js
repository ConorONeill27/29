const esbuild = require('esbuild');
const path = require('path');
const fs = require('fs');

// Resolve all .js files in the app/javascript directory
const entryPoints = fs.readdirSync('./app/javascript')
  .filter(file => file.endsWith('.js'))
  .map(file => path.join('app/javascript', file));

esbuild.build({
  entryPoints: entryPoints,
  bundle: true,
  sourcemap: true,
  outdir: 'app/assets/builds',
}).catch(() => process.exit(1));
