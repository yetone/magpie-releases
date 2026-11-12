cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3947"
  sha256 arm:   "969e726fe789bdf389af9a3a48d917e1530d24ab9e919e3d39ab9f36061902ee",
         intel: "53250c51db9bf9a63aa9e9fdb4ff5028e972f747f2aa611d2f6f1e4c8fc5602f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
