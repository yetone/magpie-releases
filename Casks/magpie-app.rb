cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2061"
  sha256 arm:   "e5ba50b72cefe36583e8286aaed6e93fd18cf2e9005b08ee96e603f27f743453",
         intel: "e43c2787ad3f0f7708218ee5e517016fbbe9dd9ac2005bf206550c6d84ebd4e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
