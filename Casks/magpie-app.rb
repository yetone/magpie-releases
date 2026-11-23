cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4701"
  sha256 arm:   "d02050d3109105af8e43c4c6ad18289a3cae1ed44a592a9b945c3e173e0dc241",
         intel: "c912baa6c75473c8fb44ad02c53a4718faef8e1c254f2ed490f3652616b73d39"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
