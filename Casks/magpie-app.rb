cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3812"
  sha256 arm:   "6ed929bc604a95f9cb3888ce4a5c7ec02be13f052980bf0a3cd3c89915c5f173",
         intel: "0bb04d37b89e0e8094125a810c0160070671ff78f75e84eed1ad2298739eab9b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
