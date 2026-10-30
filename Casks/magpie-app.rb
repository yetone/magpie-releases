cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2188"
  sha256 arm:   "e669717553f2bbda77a7fdaa8980a1ece4ce6de61bb4775a4922f8f535969713",
         intel: "2b5df1d3da5a090634ed57dcc3789e90023d1fb9676bdeda7ac8114b5b17b94e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
