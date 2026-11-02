cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2710"
  sha256 arm:   "bde59f7120e4cf101fc2c1f50ccaebfcb6c362b1ca6dcbca164ead91b31ac3ee",
         intel: "3eedac6787b8b1853dc3c3c52ddb6d1718351d31b279ccd3e85b47ec6e969402"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
