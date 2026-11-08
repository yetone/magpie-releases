cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3331"
  sha256 arm:   "c844c08674c6d87c4acaefec809d9bc5f7900cdbd43df4df9fdb77f1de33900a",
         intel: "a6b76a64a3c71f694ee3d09494409ca2624ccd5c850368d16c2e9fdabc2adf4f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
