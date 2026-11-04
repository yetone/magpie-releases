cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2903"
  sha256 arm:   "27cfede9be2205c96a1ee768c299bf61669022ecd9c211cd4ba82bea9f1c40d1",
         intel: "76976fa77072bee3e2d37c6eacf4785185ff4486982c037a432cd7c025ea876a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
