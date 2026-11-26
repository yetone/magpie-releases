cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4855"
  sha256 arm:   "46ba1ea680d23e35d08c68582f39b64e8e4cc64e02a87a93429ad4cc6b1d1b02",
         intel: "2e81968b7084156347090bd1e53e82efd5cac0234870f7d02583d01a32afcedc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
