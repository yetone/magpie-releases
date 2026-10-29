cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2111"
  sha256 arm:   "22b7a3a2d89a142fa4d5e0f3cde71fdd505d584053abe7c407f1de69d2291b64",
         intel: "de42c5965bf259449db3d82cf48f914a14a77f3ea7a1cc1d5d3e6eb9d8fddd16"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
