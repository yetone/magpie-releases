cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2815"
  sha256 arm:   "61f8c02e1294413d2c4a3ae4b8f3f3f96c08d0d6f0a779f8d44c1624c52541e3",
         intel: "0910d2900127e2a519eff409447808a3e36835f674f55b92fa660aa9468cf811"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
