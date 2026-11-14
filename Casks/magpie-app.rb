cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4222"
  sha256 arm:   "4024e38460b975b60a578e8a2ffc7d9f53e7982718a82a083c90b63de5cd1ace",
         intel: "0d4182c99de6f165e6c4f20de1a6e94a62689b686ed7a255c6ca6de464118e03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
