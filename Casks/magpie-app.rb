cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4961"
  sha256 arm:   "dd034b621fc8679629d238d47b57ed8a063452d7a2d9c11aef4e322f7b662846",
         intel: "d3430c7649c66db84dd3175e8d0a8bc46e7827a1fb1e480a3fe2de6eeae39b97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
