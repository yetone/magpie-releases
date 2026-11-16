cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4294"
  sha256 arm:   "fdefc329d92b6ecb5a08772e6d3e9af5299db1e244b0572703014e23b1282d77",
         intel: "1b3e443dddf024b95ed6322dba417c45be89e6a60e2140c0d65356ec20d33157"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
