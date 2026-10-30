cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2171"
  sha256 arm:   "286f72d1fc83f26888599e75f4d790d673a489ff616c37e8a84ae5cde07a1347",
         intel: "18ea892105ac370a3f0c1bcabf8bc7c2dc20251529546c592ce353363244dc52"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
