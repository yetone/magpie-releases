cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3830"
  sha256 arm:   "c36ab2122d67723f46b29c7370bbcb15b1cc59cf9dc2837208208d3a5870e538",
         intel: "27fae3bf99c8da3683460d137fa8299457909ebc754d5cee73b871339915584e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
