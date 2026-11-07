cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3267"
  sha256 arm:   "8e8ddbc0f86620315908fb6f0e64d06bc14b013371e99e544838cc2f71f4b0ec",
         intel: "19541216d871138ff8fad27f7b2d451e3d572714821ca7fce4eb99fbc1a6b216"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
