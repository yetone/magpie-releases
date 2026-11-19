cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4523"
  sha256 arm:   "63297bd39aa5cbf862800cfffc1f2ce6e505d39ada9a0943414886f1568efcc7",
         intel: "60a63c31feaa429cd97ce104b3809c082e3883787ca3a31d49026f68dc888679"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
