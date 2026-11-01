cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2615"
  sha256 arm:   "0dbe51d2bb0caacc7653b5f3b44d6b6b842b9a170dc41a79f81d0a3735d507c8",
         intel: "f1ac0720dc81c96fe90bbe202b69b155df76caaba4324bb2adabceee3e377024"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
