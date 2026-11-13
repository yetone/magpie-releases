cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3984"
  sha256 arm:   "5759763e067484bc2c10258f958f8fa559bee8354a90e9a42cfdcd1efdfd2e05",
         intel: "3bb2d84d433d546034f1f95c919fa8a063b6b5ea391129264fc6c56f4f3c234b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
