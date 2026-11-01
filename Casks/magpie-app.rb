cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2507"
  sha256 arm:   "e6d91b9def0889c42209bc9b2e3bc65b095c3c7fb5d4537c1760e285cef2d69f",
         intel: "3a110effbb02e50066601b8f8892e38f695563d342d0dbb519ea46454aa636a5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
