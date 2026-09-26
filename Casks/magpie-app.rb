cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.146"
  sha256 arm:   "dd54831ead3773403ff9e839e0f1fb2c605964510e63001d4301d285d0f1395e",
         intel: "11ab56b8fc13dcaf581b0c2a575d0506e5954d5c5f65ceed56629cdcbab66d92"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
