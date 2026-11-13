cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4095"
  sha256 arm:   "671e5109934a878161763dc3834b81136e2d2dde95c6cd9933c74518741d8a05",
         intel: "b8a8d91943b3b7cbec6a8f846c42834547c631fc0e34cb14a28ea5c79758d6c4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
