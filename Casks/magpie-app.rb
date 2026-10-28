cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1908"
  sha256 arm:   "b0dffbcb57bd499c08bb3f805b0b081ad46a2cd6397236803fc899ecac1e3ea8",
         intel: "32d087ed41ea7f3c2fa6dd0243f26ddddc25e325fdf40d663dbbc3676df85cb4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
