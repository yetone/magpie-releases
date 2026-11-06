cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3115"
  sha256 arm:   "4130d642d0afe8dd4f33cbb341177ddca8ba960b2e6fd0491bb2ac9122b4ac6c",
         intel: "a1d619804ebeaa47301a30b908bb86f81b82b6b5003f4e9ad455cc46f4c7a658"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
