module.exports = {
    repositoryUrl: "https://github.com/wirekang/mousy",
    branches: ["main", {name: "dev", prerelease: true}],
    plugins: [
        "@semantic-release/commit-analyzer",
        "@semantic-release/release-notes-generator",
        [
            "@semantic-release/exec",
            {
                verifyReleaseCmd: "echo ${nextRelease.version} > VERSION"
            }
        ],
        [
            "@semantic-release/github",
            {
                assets: ["release-assets/*"]
            }
        ],

    ]
}
