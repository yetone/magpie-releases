cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5020"
  sha256 arm:   "1012c690603920ff77cfaa20b271666f3d68abe184f2d689c149a107dd44a496",
         intel: "cab71c29b96af58fe63e6ac782dce45390eeb1a1dbf9b2035b71d3151e1eea56"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
