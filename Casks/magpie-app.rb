cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3822"
  sha256 arm:   "743c9eeb8141fb56c4a3186c7d09b3a77cd63644dff90e0d2f99e012bbaac9e6",
         intel: "67f21eb9c9d3445d3f06749e82f852278dc270b5e352f38770cf12e3eb409b0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
