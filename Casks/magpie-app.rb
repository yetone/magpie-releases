cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2374"
  sha256 arm:   "382b9a418d8645fec138cc88d4f40071bb7ca3328db0a72c726d10744c29e498",
         intel: "c275b23ffe9c202716930aabf76de429ee6d1ddf7ec600ff32753cf8f3872c3a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
