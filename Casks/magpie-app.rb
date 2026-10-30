cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2222"
  sha256 arm:   "87d39bde86bded1943f69f2f9f1a7b87841d5e97fa1147c70fecaf0c3bda9b25",
         intel: "b0e58ae3acf2b02142c3de72b06798f2eaebf4237b93ec7af5f87f04bd014b93"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
