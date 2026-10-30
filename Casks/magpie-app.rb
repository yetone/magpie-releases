cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2147"
  sha256 arm:   "4f9daf285088e27da0df95e2c1f04bb5cc56142673b8a7d94fdac341021255fc",
         intel: "7c040b495903418a9d50af3e11a0aece4e9d04fb90556010d6e73100687d233f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
