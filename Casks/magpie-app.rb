cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2283"
  sha256 arm:   "9d09d51d914cf3ea4c9ac9ef84eb191b55153acee44681bb02af12f020b76c0a",
         intel: "b03cb6a5ca791b9d3211b57c9ab6777b2312588089f783aa2d0515acd5365a7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
