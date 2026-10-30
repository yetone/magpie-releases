cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2262"
  sha256 arm:   "2cbcd61c731cdd4616b5eedc4de0275b094b4406692b31efc1e62bc5929be540",
         intel: "d16f479f96556716f11e45c3f87662509b331ff0a6a75d185ac8c71380e93ab1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
