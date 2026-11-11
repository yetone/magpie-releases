cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3715"
  sha256 arm:   "269a2a497752a82bf9d5562b732c37c409e4e8d2bc4c6d3f848ce7622fd3100e",
         intel: "3aacdc1ec08c8a676c5a3d00482d5614e61b2ed09ceb3f9376c8c8464b331180"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
