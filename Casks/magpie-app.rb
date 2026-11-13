cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3982"
  sha256 arm:   "0ddcfb12953499b67a8c28c465122abe5b7e5e0b21d9dc2b0f1576a84a6fabe9",
         intel: "8f77a41e158655a889418b102b60d674638c992a040f74275b002f7cc58636c1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
