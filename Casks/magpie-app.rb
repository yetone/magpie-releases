cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.980"
  sha256 arm:   "e5145c810054c7e338a88eb9f03992097b174f7bf9aa65cd578fd3b6f1202d1f",
         intel: "5a2584bf171a533721607773585f835e4f803e726e8ad140d43b422a09ffeeb2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
