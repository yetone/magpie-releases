cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2495"
  sha256 arm:   "69d05b93bba9fa47b89e47c0ad2f73b5b9e1117bf3dbaea423c0fca9e6911321",
         intel: "b7d904572af1aeeccf8e4f676c66991995d5a618df318ee9d60646c0f1e61da7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
