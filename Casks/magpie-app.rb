cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4990"
  sha256 arm:   "b32afbb001216e4691cbac32cf4967717571aeb1d3952ab9a2e41687daaaa28c",
         intel: "86d5adf2cace8a523e33ca5300f8917fd19dd8aa24f577aee7e365c1abc5f928"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
