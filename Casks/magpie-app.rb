cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4977"
  sha256 arm:   "e994233648123411ba641417f0c6a3acf0d65f8aa2bac0c8af3e435db3b08217",
         intel: "208e63510d359191876a4caa0f14ee7c3785133576e5167c76c2ae8c6ced307e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
