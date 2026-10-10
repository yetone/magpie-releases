cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1153"
  sha256 arm:   "d515f47aa93a7123fd5913eeb0ba760e754ae49385d3de03a06e1cafd829b2a1",
         intel: "fbfa12822573dd6cfa2c8af48b67977b51a55d68084f0ddd301371bc6feda037"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
