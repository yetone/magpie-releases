cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1980"
  sha256 arm:   "48fc06b21d6a2af43671d02aea678611c8468be319601c778d11174065ac3e31",
         intel: "72d84a4294404da227f43128b38a31393e1d1c7ae3e43ec5b768ea86561be6b2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
