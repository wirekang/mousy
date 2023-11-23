module.exports = {
    repositoryUrl: "https://github.com/wirekang/mousy",
    branches: ["stable", {name: "main", prerelease: true}],
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
                assets: [
                    {
                        path: "release-assets/linux/mousy",
                        name: "mousy-linux-${nextRelease.version}"
                    },
                    {
                        path: "release-assets/windows/mousy.exe",
                        name: "mousy-windows-${nextRelease.version}.exe"
                    }
                ]
            }
        ],

    ]
}
