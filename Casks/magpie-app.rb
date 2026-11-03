cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2878"
  sha256 arm:   "bff34eaaf812a89f362c494d2298f073592a17f130d5e18f2b4c824dada55d8a",
         intel: "3a2d26abe03a8a92b7785f1e6ad002302ab98b78c89c10033a8f52268cde4a37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
