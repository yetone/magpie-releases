cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3058"
  sha256 arm:   "273b918f93397e7b62a602045891027dd11d0f2afc94cb67cafb5dd9a3dbe830",
         intel: "0771e3e361a092581847101425ce6641a30cce2884e8ca503d37952a6f04dd6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
