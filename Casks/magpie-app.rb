cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3282"
  sha256 arm:   "16fc1cebfccaed54ad2b44a50ddf64b2f80a32045cadfdd89e964752b43ec10f",
         intel: "5db949d147d6e062b27d7433290b68538f1932c9cea26c39d5e2c318dce7431a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
