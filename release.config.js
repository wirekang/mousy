module.exports = {
    repositoryUrl: "https://github.com/wirekang/mousy",
    branches: ["main", {name: "dev", prerelease: true}],
    plugins: [
        "@semantic-release/commit-analyzer",
        "@semantic-release/release-notes-generator",
        [
            "@semantic-release/github",
            {
                assets: ["release-assets/*"]
            }
        ],
        [
            "@semantic-release/exec",
            {
                prepareCmd: "./scripts/build.sh ${nextRelease.version} ${branch.name}"
            }
        ]
    ]
}
