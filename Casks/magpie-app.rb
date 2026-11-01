cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2636"
  sha256 arm:   "5e0814fd701777322519dcddbefd3100bc1c7bd3fbecfd15f40af4b95f5f7f19",
         intel: "22eaadb9ffea44c526f562fe0c4eb2ccaceab58684192d8427cc9524c6105d57"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
