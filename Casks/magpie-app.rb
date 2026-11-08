cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3296"
  sha256 arm:   "53b44450a68868221d98f48ef982a5d4356ebee37f6170175c1b05ea40010384",
         intel: "b3cb725e3687c016025c4cd5d8143f96cfdd40d600dc049e4372d303b3584ab2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
