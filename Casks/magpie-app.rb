cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1071"
  sha256 arm:   "1ec697fd8b69f5a94eb5139e98fce4ed78cbd00487585f42b5a11496cccd1662",
         intel: "8278aabb2ba69fc85932106bf32d181fdcdf2f8eaa92618b3ad3d2874478c66e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
