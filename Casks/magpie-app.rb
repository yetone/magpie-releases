cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2449"
  sha256 arm:   "cc7cbc5f36e2ecd6572d330028574ec88f85d11ffe86d7f554b1d972c92c4908",
         intel: "2115b3a30f5ce40a2a83e7dcdf0fc5e3fe74505a06f60fc8d8421734741d74d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
