cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4635"
  sha256 arm:   "5fb1a1320e23fc216a94d964db2b8027abea25fa8715210e927f629f5f956ea1",
         intel: "cf5c76de6e2450ab0bbc58cbe51c8183b5aef53dee7590670d94f4ad121bf82a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
