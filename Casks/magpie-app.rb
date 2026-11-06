cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3160"
  sha256 arm:   "98184eef1f0efba077cf3941a5688115376ca14c4a5543c2afbd3fa06bf20cdb",
         intel: "53c8c97bf99ada7116ba3e8a01b576629b7459a7c9b2f395a1a5009c85afa56a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
