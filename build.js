const esbuild = require("esbuild");
const postcssPlugin = require("esbuild-plugin-postcss2").default;

esbuild
    .build({
        entryPoints: ["app/javascript/application.js"],
        bundle: true,
        outdir: "app/assets/builds",
        plugins: [postcssPlugin()],
    })
    .catch(() => process.exit(1));
