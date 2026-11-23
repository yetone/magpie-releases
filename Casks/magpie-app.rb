cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4702"
  sha256 arm:   "ab1eaf7a27ea9b810c2309f61edf2eb22c042b711a7be5b33264beee96ff6d08",
         intel: "6674caec5a37b979067ee3c8ef62663bc0851ed0ff86abe58d621bd0b32bdb5e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
