cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2874"
  sha256 arm:   "3c92c2ddc2ac35ac4c09dc9f6e622819c8faf62bcc233850599f13140249a646",
         intel: "7a18857b96a5a361169bf31a1c5cfe1d76db9b1e75b9caf277be7a758b57afa5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
