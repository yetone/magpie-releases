cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3810"
  sha256 arm:   "3ce94d0444db903c37374cc7f2aa01c92bb77643f45003b3a08cd75c65a838a7",
         intel: "8ad32f1a0d46ca104d90895a8b39992fa56f511def9add30bc12332f2ee75fc5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
