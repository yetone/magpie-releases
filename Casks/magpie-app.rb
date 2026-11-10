cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3601"
  sha256 arm:   "2c3297602db2ca0a42401f1862f369d8cb61916805d529fe68c0546413d3d3a3",
         intel: "afa11ac84ba084708c90b573382efb4452933d705322306abc3cca1c6a79516e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
