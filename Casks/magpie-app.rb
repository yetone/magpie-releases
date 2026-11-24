cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4745"
  sha256 arm:   "3129bd8fb47045c88012698f98e2603a9a9fc2610ef9ee1c13a65fcf76b69a8f",
         intel: "337c24cfccfbf6f4683820e41cc3e69b118ada583bde239eae35166e04a4fe3b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
