cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3613"
  sha256 arm:   "124fe54451574dd4f5d61a06f143624ea6d5bb8af0969ea7c9275338d498856f",
         intel: "30a18af4e923f7c0e5d1e9ca345564b60f11bec56032ea144fc133b863272ed4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
