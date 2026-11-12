cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3922"
  sha256 arm:   "f8f26d0247a1e6c894b7923086916889d057fd5d8ea3d4df2d912f15c37bf170",
         intel: "1954d7c2ab0f36892001a498c8cd9b23abc31361f82c4f11f1196e2fbc700001"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
