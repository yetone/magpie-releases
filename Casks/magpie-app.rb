cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3804"
  sha256 arm:   "b63d21afde6cd12b34a5048eb30bab9c1c211b1f490ba3923e15d8a893a6302c",
         intel: "5701ded12b35bb8d9bc2d2773694260ca1c661f7c9c92a11dc00ec5b4b89b09a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
