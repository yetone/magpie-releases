cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1879"
  sha256 arm:   "98b023909adb6bac785199045425c6ee42d82a7d48bb111b4f992ba7e3958e54",
         intel: "85bad873a3df02aa3688db40cea5020d521e542a133fe0cdcafb878a99f1f5d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
