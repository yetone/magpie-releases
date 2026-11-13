cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3995"
  sha256 arm:   "336835f75e339299d385a3181e2027355fe7092bc0a7b1fa8955758a2d56d453",
         intel: "364d47e285f18ee452d7438b2f1ff3beb218eb34e795e139a6074b89b5d68f64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
