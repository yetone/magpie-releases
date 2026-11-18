cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4490"
  sha256 arm:   "6b4f461b7c7af6317aab40fc2659e3d61e7a08213508e135ca941c8fb83c3e2d",
         intel: "8d0a73adab235bb68d1d91e40f1d86a184e234e57929396fbfa99e34d04841c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
