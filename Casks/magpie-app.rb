cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.908"
  sha256 arm:   "c4dcb19c8ce8ab97b28654cb8acc09a5e6f88b589e089e39484fe435cf77f2e1",
         intel: "b99d9ca72d546a09bf0ac669f0546c42c6effa51406090743c42fa1e030adce7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
