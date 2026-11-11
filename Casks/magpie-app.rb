cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3728"
  sha256 arm:   "4733104132ffa6df4796024f1f6eb14557bb81fb589284a61ff2ffd142a67b65",
         intel: "72552dae9a1ee4dd3aebef0dedbe4c28ab890c5224c774e45ca4731e890b3641"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
