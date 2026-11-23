cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4723"
  sha256 arm:   "4815979a0d265abb03e57aa64d6c407d3231258d4cbe84ec545af6688d21c377",
         intel: "35612bb3c69450d9bcbf56fe7f6f02d7e251daea44755f8ba4995d41f6413914"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
