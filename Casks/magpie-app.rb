cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5021"
  sha256 arm:   "acb6bdeb7e0e7d83ab92aeaba688cb7a619faeb3d4fa8e3d55951ebb0e11b623",
         intel: "2f0ab8ff07e8e7b66e4bab89a3fb43762cb97540d7f615c8bc2a7ef306ed2951"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
