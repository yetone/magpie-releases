cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1052"
  sha256 arm:   "4949906eb1ceacd91c61b163564a370212e07973148fafa5805cc944dad76a98",
         intel: "502a4237e0df685b8a96247606ef893df2161bddc56457490ea8a978d1290961"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
