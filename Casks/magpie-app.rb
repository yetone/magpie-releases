cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2855"
  sha256 arm:   "1a5ea3b9d89030a38066c7731f6aed3fd92d1ce635a89c75a105935285e742f2",
         intel: "14766b3f87392d7460dcc2735892fadbb79d1431c433d53e125430bc9207c7b8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
