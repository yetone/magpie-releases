cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2090"
  sha256 arm:   "96dc0b22f1435c68bb3eab4d202e1138702396a68dc638bd1998746bd4cc311d",
         intel: "2bb264db7c09774ff56d8d28bfc1fe4af837e9da1f07b2e46f1693f860ae3d2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
