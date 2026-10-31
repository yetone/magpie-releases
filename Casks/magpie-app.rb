cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2470"
  sha256 arm:   "23e9be90cfafde63761c56e69b09168ef59f907b071386d007c0ec9fccf5d659",
         intel: "85b4d2f9c873be75edd6fa43ffc14afce3a187f2df8ac87f5d5aff38a3bc10c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
