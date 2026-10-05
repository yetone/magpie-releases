cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.941"
  sha256 arm:   "46382048b5216b01cd6d37aa662c2cfb2188c4671a9a830e2fba44cef0aa803a",
         intel: "9f463c88d57c37cbcdae5d814b36f91654bbae13f9961c81f8cb8eaf6f1dd4ea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
