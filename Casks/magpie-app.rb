cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4932"
  sha256 arm:   "078645aa5a71c552d2fe627c3dbc820d112cc3cffd5122025f97c978b7fd78b0",
         intel: "21e55392c8eb6c529e4cdcd91a64c1f3047812ccd3665b8b59b96a86a77f4909"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
