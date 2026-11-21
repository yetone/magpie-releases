cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4642"
  sha256 arm:   "27ffb549d6d10aa7e5e3696a3d117c1ac3972cc59194ab3ae23443a645e1a015",
         intel: "c8e7e26b8540a8b851c1f4a5ec50eb435aa4f183ebb5c6e6b42b59b568081235"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
