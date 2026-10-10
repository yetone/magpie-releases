cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1157"
  sha256 arm:   "dcb7133b7fd0d37809f6f322969bf7512d30f5858d1f7a511a1ab8478e5dcff5",
         intel: "e9baff2be8353e1f0bdee00d4f67f51dcdbeb5546243a7d7a58f0cc897be2766"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
