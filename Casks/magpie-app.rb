cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5038"
  sha256 arm:   "0c5a6b256d5d724a16efb49a337e02b7d29fd0a34561ef9eccce2a621daa27ca",
         intel: "a12e9198794fb24e7bd28a7d2cef967a233a1282da32611efa9f71ce62622f7a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
