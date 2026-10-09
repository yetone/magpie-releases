cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1132"
  sha256 arm:   "c4d534dda7858712b1ccb7bf1e71acc55ce2d1537faed4557dda5cf52730d386",
         intel: "206fe09e6de2abaa8d822507348d37b776c9d43a4e6d5775c93ed1201a5c0e5d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
