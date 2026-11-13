cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4072"
  sha256 arm:   "380313247561e298974b78700881c1928916793b9b749d0ee674f882d349faec",
         intel: "0f1c88926970835579d1b680d27519270ccbb021e9acb05ce8636f902042e2ad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
