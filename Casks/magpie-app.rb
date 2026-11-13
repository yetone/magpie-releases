cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4026"
  sha256 arm:   "83770712a210a3f1f0e7e6d743a2107b16aa51cc1b12cce9f407c84aeb347c9c",
         intel: "2510e23465ae44448a4454ae1ac1c7deeb6e5f81ca47b6a051217c046a35a534"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
