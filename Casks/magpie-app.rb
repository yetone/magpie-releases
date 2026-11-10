cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3627"
  sha256 arm:   "a2dfd6ea042d5d717a018716ed4694ad59747518eaddc74955febb0ca5cd6bb5",
         intel: "c0e6d591bf70186cba162107747fec5f2c84fe95b76bb0c5e3a15ac120bed42b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
