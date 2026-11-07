cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3273"
  sha256 arm:   "3d79a1f8c60f124b6283fa545ba875dc735ef83b60dd4a9f50e13a2f95e4358d",
         intel: "42fa8d9040fae77c5d424527170cc5296470192b5db078ceb5a392fc88333567"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
