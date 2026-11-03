cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2819"
  sha256 arm:   "32167e368951e46ad6e8ec6e76b7cc7094fb362bc21f67af56d5936dbc27c6e6",
         intel: "a91f8d15db5519417071d704d6a11e852d46efb06231e274af64e678fa57670b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
