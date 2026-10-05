cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.990"
  sha256 arm:   "0c43121043e498f5bdd2d49b876e20f51a6e9ec4c250f109358ebf7788072c3a",
         intel: "5414bc57197861981a6f50b63bb6601f4eee55f993d7a0e435669591da6d13f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
