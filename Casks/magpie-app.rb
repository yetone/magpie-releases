cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2210"
  sha256 arm:   "9b77653bd57c6dfe6d9421c080b7f8b44f7617e1ff952e6b8d729f964e830e34",
         intel: "6ef32ed4b440a1b20259ad15ddd1b0dc8fcc86410a793e76c97f95063f07e6a4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
