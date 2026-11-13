cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3992"
  sha256 arm:   "b2ab7fd8b9b7e68e0896f7e3856fb6d84f017f4b4a4423110e96342347699824",
         intel: "1ac375c5a43395070349062653d5eff95829ce85e14af0e5e3acb9b2e27c92b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
