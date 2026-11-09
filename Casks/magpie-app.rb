cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3412"
  sha256 arm:   "45c705ad1c38a5b05557e8cdeed72d603dd069ccc0d2684d7c3128c3d5cfbffe",
         intel: "876a8c9611f10177b54369cab117c9aed69c6d4af104b7415740fac5777e73ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
