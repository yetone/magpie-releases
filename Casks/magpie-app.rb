cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1122"
  sha256 arm:   "22f580f7377583d3bcbdeebdeb2546977befaa90e5aa896537906151c6af0c61",
         intel: "4ef72c4db5040061f0afae17a4ce9808eccb3d9ffb17f44550e6d7fee1c499d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
