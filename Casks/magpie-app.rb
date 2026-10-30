cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2204"
  sha256 arm:   "dbea2c341ac8edf1d7bc25e2fc8b78e78139ad85c9d249091eb35faedefc1dc3",
         intel: "bc0f0116b28c42f139181970a42be41338879055060fc9454e8bea38a2002cd8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
