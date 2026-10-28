cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1851"
  sha256 arm:   "cd85a39c346c771405c4b5df1a89daef49d6f00bc75a73709b4d1f9f21848801",
         intel: "b367e49fe1fc6e094fda2f6b88e328b4e54fe357e6160825f4741475d8763f37"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
