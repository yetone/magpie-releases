cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5011"
  sha256 arm:   "a0f57c89f5a825e32b3fa38ad7abfffa18e5fde4bf01ded691a0ee3038c07016",
         intel: "c9e61bb8faf66728f7f0877f0978c519f38bd57d51054359db66fac97dcba326"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
