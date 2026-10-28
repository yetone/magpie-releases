cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1892"
  sha256 arm:   "cdc5152c123fcf0cdc1c489d914f194099dfa6aed850c7b9633eb7ca4001481b",
         intel: "f3806a0787a64b6d68237db69b6d7edf96600e4209653b4729286ec711a1e6e1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
