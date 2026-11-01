cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2597"
  sha256 arm:   "fa2781260093a60768405010251607a9bf7584d1f6a64f2e5c79661ea5bc261e",
         intel: "f155efba2bdf8c78cfe27076da54482c7ef7ad518615764213a33cae00cbc087"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
