cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4560"
  sha256 arm:   "3a951ddea8a5a1cd966a35a04a5f57af479331dce4d4b7e10cf1791aae3195e3",
         intel: "1e34a9884ee55f7348c1524bd086764ff33eb21c434204c1f77e0116478d6423"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
