cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2411"
  sha256 arm:   "8f98e598c216f3f7e15afe01898bff9ef24b7658630750f9de7eb5fd7fb0032d",
         intel: "a2e4982088d9b2825a443798ca02a568974abc27cefc22e0af6bb0f1aeccd259"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
