cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.946"
  sha256 arm:   "ebb372b93b368201f33e9f80c1636ea8f89d8782d95ba072e822a9aee37deff3",
         intel: "b50e548a8c3b69a1a5cfd81c226bea6a08bae0ba0f62bc8506d6411217d1d31f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
