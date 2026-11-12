cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3938"
  sha256 arm:   "1266c81917022d8f0c58fcce0d60d07b5141ea4a91549c03f89c1d501d022c23",
         intel: "31d2f7bfed8ec2fca51471866788462055953e248bf1f446e99c75c22d2190cb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
