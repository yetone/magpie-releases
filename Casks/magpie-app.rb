cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1076"
  sha256 arm:   "2b1e92ee2e9b330facd5295c7b0459e63e6310f7ef824b88a867efc0cd2a4398",
         intel: "0e8a77b03cc345b99dd5301d05d7f7364d638b59573a262266135814426af6f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
