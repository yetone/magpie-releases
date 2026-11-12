cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3904"
  sha256 arm:   "5f803ba0390ed39398379a90bdfd14972482b8684d77d5e44c6bb6e0568748bc",
         intel: "7e202352e7d68119e88941cf2dbb33e63016b07b21ec111b060f1cb712a7e371"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
