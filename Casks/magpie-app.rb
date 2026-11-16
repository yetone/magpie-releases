cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4337"
  sha256 arm:   "51cd4dcd7173f81f7dfe59e3ef9ab3b01f7a960a858d4f38e3cd243793d10795",
         intel: "49c3b1cb1a0eee1a8e2128d1c0ffe2542df8350f1a07898d78af7d3b5e1fcf45"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
