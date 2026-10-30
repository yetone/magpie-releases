cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2139"
  sha256 arm:   "d47c292f09d72d40442f69517f4461155141eeaa371843d1fa22059b81a21c81",
         intel: "fd655460e6f4e9a43c9b6661c9d97e5182729d398fe5fe84d08bf9c8cdd4db0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
