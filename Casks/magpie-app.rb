cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4516"
  sha256 arm:   "65f75847536281d0c40f44796c20c228447ccfed3f6ffedfd64f59387a357f26",
         intel: "4fedbe916ecc388494eea2fec5a417ecf495ceeca4fd1fb54ce88a5d8b583c94"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
