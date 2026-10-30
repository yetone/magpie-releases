cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2148"
  sha256 arm:   "160b25a0b6b6970d5c2d2d17558507860eb9a232bc0622733574c5e79d950ed0",
         intel: "75a120906834a47c28775daf80402992c46f2b3786bf7225c340cb3cba075805"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
