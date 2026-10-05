cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.943"
  sha256 arm:   "38c8e8136dcacd71cfe110c8d55ae0707be33e0291b62c5a2ae88b177e668758",
         intel: "67638bd1d7ad64efe6c9adc402c073de65905d5235b40a7ce881db37c9a05a97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
