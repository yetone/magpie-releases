cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2313"
  sha256 arm:   "6f754c47126ff6c7d4379e5c69773df2692b2633e3ca8d7f7e267193f9a96ab4",
         intel: "ad63cfabd754c5405e1ca098bdfb92cae3ba12fc35d5e563c482e365a0ef05d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
