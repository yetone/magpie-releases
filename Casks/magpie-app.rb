cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2630"
  sha256 arm:   "029e164aa0d1d4b4c3582ff22614c837968cb61581ff2845c13d3e838fa39dab",
         intel: "c5fa8d24ef58329d5c9112d221f5516c299866205fb61e2540191a143fe49f1e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
