cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3625"
  sha256 arm:   "330fe6d4d25ef696af737b5a0704f6be30491deca6a6c42e7bbedba521e989b0",
         intel: "f31825c67e799876c74310370af879f7fba7f7e17ce41d3d10890ea3cdefca81"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
