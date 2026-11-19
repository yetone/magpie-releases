cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4558"
  sha256 arm:   "779935ca125829fd1d98baca48d731c7d59aebf328a9f6101562e31f02226ee9",
         intel: "48d57fa1db88458b2d5f9d58d9fd7577ca987a84a4820e53de42fbf6fb534de0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
