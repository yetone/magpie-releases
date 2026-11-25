cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4794"
  sha256 arm:   "a304dbd87d1741779efa8177ff452d1e8cafeca9c5d5c7597f008314b586c683",
         intel: "489a92ecf49924eb51891a447ed6e54a6e230e49ac6d2f44b68902ef3feea22c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
