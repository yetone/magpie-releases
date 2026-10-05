cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1049"
  sha256 arm:   "97fe6f76ff262a738891be7beb1cc782bf7a34197fe0a58cb9d928b8ffc4b931",
         intel: "9254e271adf45ab6d94459495b9516be80a92bd3e93402f9df5095b3f5bc3ccb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
