cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2803"
  sha256 arm:   "8b5ccf462c166646094d01d3858a9b3b6b23dee1d200f18afeb9136adda2e7dd",
         intel: "687a8a9d6b2f3edbea83d36fa660ed9ab8c7f97d4f6ba8a34b8b1a6c91260bb7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
